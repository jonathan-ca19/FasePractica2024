import { ConflictException, Injectable, NotFoundException } from "@nestjs/common";
import { MessageDto } from "src/common/message.dto";
import { CreateHorarioDto } from "../dto/horario/create-horario.dto";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { HorarioEntity } from "../entities/horario.entity";
import { Modalidad } from "../enums/modalidad";
import { AulaEntity } from "../entities/aula.entity";

@Injectable()
export class HorarioService {

    constructor(
        @InjectRepository(HorarioEntity)
        private readonly horarioRepository: Repository<HorarioEntity>,
        @InjectRepository(AulaEntity)
        private readonly aulaRepository: Repository<AulaEntity>,
    ) { }      
    
    async createHorario(createHorarioDto: CreateHorarioDto) {
      if (createHorarioDto.modalidad === Modalidad.Virtual) {
        // Verificar si la modalidad es virtual y si existe un horario con el mismo día e intervalo de horas
        const existingHorarioVirtual = await this.horarioRepository.findOne({
          where: {
            dia: createHorarioDto.dia,
            horaInicio: createHorarioDto.horaInicio,
            horaSalida: createHorarioDto.horaSalida,
            modalidad: Modalidad.Virtual,
          },
        });
    
        if (existingHorarioVirtual) {
          throw new ConflictException('Ya existe un horario virtual con este intervalo de horas y día.');
        }
    
        const horarioVirtual = this.horarioRepository.create(createHorarioDto);
        await this.horarioRepository.save(horarioVirtual);       
        return new MessageDto(`horario del dia: ${horarioVirtual.dia} creado exitosamente`);       
      }
    
      if (createHorarioDto.modalidad === Modalidad.Presencial) {
        // Verificar si la modalidad es presencial
        if (!createHorarioDto.aulaId) {
          throw new NotFoundException('Debe especificar un aula para la modalidad presencial.');
        }
    
        // Verificar si ya existe un horario presencial para este aula con el mismo día y horario.
        const existingHorarioPresencial = await this.horarioRepository.findOne({
          where: {
            dia: createHorarioDto.dia,
            horaInicio: createHorarioDto.horaInicio,
            horaSalida: createHorarioDto.horaSalida,
            modalidad: Modalidad.Presencial,
            aula: { id_aula: createHorarioDto.aulaId },
          },
        });
    
        if (existingHorarioPresencial) {
          throw new ConflictException('Ya existe un horario presencial para este aula con el mismo día y horario.');
        }
    
        // Verificar si el aula especificada existe
        const aula = await this.aulaRepository.findOne({ where: { id_aula: createHorarioDto.aulaId } });
        if (!aula) {
          throw new NotFoundException(`Aula con ID ${createHorarioDto.aulaId} no encontrada`);
        }
    
        // Crear el nuevo horario presencial
        const horarioPresencial = this.horarioRepository.create(createHorarioDto);
        horarioPresencial.aula = aula;
        await this.horarioRepository.save(horarioPresencial);        
        return new MessageDto(`horario del dia: ${horarioPresencial.dia} creado exitosamente`);        
    
    }
        
  }


    async finAllHorario() {
      const horarios = await this.horarioRepository
        .createQueryBuilder('horario')
        .leftJoinAndSelect('horario.aula', 'aula')
        .getMany();
    
      if (!horarios.length) {
        throw new NotFoundException(new MessageDto('No hay horarios'));
      }
      horarios.sort((a, b) => a.id_horario - b.id_horario );
    
      return horarios;
    }
    
    async getAllHorariosByModalidad(modalidad: Modalidad): Promise<HorarioEntity[]> {
      const horarios = await this.horarioRepository.find({
        where: {
          modalidad,
        },
        relations: ['aula'],
      });
    
      if (!horarios.length) {
        throw new NotFoundException(new MessageDto(`No hay horarios ${modalidad}`));
      }
    
      return horarios;
    }
    
      async findOneHorario(id_horario: number) {
        const horario = await this.horarioRepository
          .createQueryBuilder('horario')
          .leftJoinAndSelect('horario.aula', 'aula')
          .where('horario.id_horario = :id_horario', { id_horario })
          .getOne();
      
        if (!horario) {
          throw new NotFoundException(new MessageDto('No existe'));
        }
      
        return horario;
      }

      async updateHorario(id: number, updateHorarioDto: CreateHorarioDto) {
        const existingHorario = await this.horarioRepository.findOne({ where: { id_horario: id } });
      
        if (!existingHorario) {
          throw new NotFoundException(`Horario con ID ${id} no encontrado`);
        }
      
        // Validar si se modifica la modalidad a virtual y si existe un horario con el mismo día e intervalo de horas
        if (updateHorarioDto.modalidad === Modalidad.Virtual && existingHorario.modalidad !== Modalidad.Virtual) {
          const existingHorarioVirtual = await this.horarioRepository.findOne({
            where: {
              dia: updateHorarioDto.dia,
              horaInicio: updateHorarioDto.horaInicio,
              horaSalida: updateHorarioDto.horaSalida,
              modalidad: Modalidad.Virtual,
            },
          });
      
          if (existingHorarioVirtual) {
            throw new NotFoundException('Ya existe un horario virtual con este intervalo de horas y día.');
          }
        }
      
        // Si se modifica el día, la hora de inicio o la hora de salida, verificar si existe otro horario con la misma información
        if (
          existingHorario.dia !== updateHorarioDto.dia ||
          existingHorario.horaInicio !== updateHorarioDto.horaInicio ||
          existingHorario.horaSalida !== updateHorarioDto.horaSalida
        ) {
          const existingHorarioConflict = await this.horarioRepository.findOne({
            where: {
              dia: updateHorarioDto.dia,
              horaInicio: updateHorarioDto.horaInicio,
              horaSalida: updateHorarioDto.horaSalida,
            },
          });
      
          if (existingHorarioConflict && existingHorarioConflict.id_horario !== id) {
            throw new NotFoundException('Ya existe un horario con este intervalo de horas y día.');
          }
        }
      
        // Si se modifica la modalidad a presencial, verificar si existe el aula
        if (updateHorarioDto.modalidad === Modalidad.Presencial && !updateHorarioDto.aulaId) {
          throw new NotFoundException('Debe especificar un aula para la modalidad presencial.');
        }
      // Si se modifica la modalidad a presencial y el aula, verificar si existe un horario con la misma información
if (updateHorarioDto.modalidad === Modalidad.Presencial) {
  const existingHorarioPresencial = await this.horarioRepository.findOne({
    where: {
      dia: updateHorarioDto.dia,
      horaInicio: updateHorarioDto.horaInicio,
      horaSalida: updateHorarioDto.horaSalida,
      modalidad: Modalidad.Presencial,
      aula: { id_aula: updateHorarioDto.aulaId },
    },
  });

  if (existingHorarioPresencial && existingHorarioPresencial.id_horario !== id) {
    throw new ConflictException('Ya existe un horario presencial para este aula con el mismo día y horario.');
  }
}
        // Actualizar los campos del horario
        existingHorario.dia = updateHorarioDto.dia;
        existingHorario.horaInicio = updateHorarioDto.horaInicio;
        existingHorario.horaSalida = updateHorarioDto.horaSalida;
        existingHorario.modalidad = updateHorarioDto.modalidad;
      
        if (updateHorarioDto.modalidad === Modalidad.Presencial) {
          const aula = await this.aulaRepository.findOne({ where: { id_aula: updateHorarioDto.aulaId } });
      
          if (!aula) {
            throw new NotFoundException(`Aula con ID ${updateHorarioDto.aulaId} no encontrada`);
          }
      
          existingHorario.aula = aula;
        } else {
          existingHorario.aula = null;
        }
      
        await this.horarioRepository.save(existingHorario);
      
        return existingHorario; // o cualquier otro mensaje o DTO que desees devolver
      }
      
      
      //remove
      async removeHorario(id_horario: number) {
        const horario = await this.findOneHorario(id_horario);
        await this.horarioRepository.softRemove(horario);
        return new MessageDto(`horario del dia: ${horario.dia} eliminado`);
      }
            
    
}