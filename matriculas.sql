PGDMP  )        	            |         
   matriculas    16.1    16.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    67365 
   matriculas    DATABASE        CREATE DATABASE matriculas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE matriculas;
                postgres    false                        2615    67366 
   estudiante    SCHEMA        CREATE SCHEMA estudiante;
    DROP SCHEMA estudiante;
                postgres    false                        2615    67367    informe    SCHEMA        CREATE SCHEMA informe;
    DROP SCHEMA informe;
                postgres    false                        2615    67368    sistema    SCHEMA        CREATE SCHEMA sistema;
    DROP SCHEMA sistema;
                postgres    false            	            2615    67369    usuario    SCHEMA        CREATE SCHEMA usuario;
    DROP SCHEMA usuario;
                postgres    false            �            1259    67370    direccion_estudiante    TABLE     �  CREATE TABLE estudiante.direccion_estudiante (
    id_direccion integer NOT NULL,
    ciudad character varying(50) NOT NULL,
    sector character varying(50) NOT NULL,
    detalle character varying(300) NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 ,   DROP TABLE estudiante.direccion_estudiante;
    
   estudiante         heap    postgres    false    6            �           0    0 %   COLUMN direccion_estudiante.is_active    COMMENT     ^   COMMENT ON COLUMN estudiante.direccion_estudiante.is_active IS 'true=activo, false=inactivo';
       
   estudiante          postgres    false    219            �           0    0 &   COLUMN direccion_estudiante.created_at    COMMENT     c   COMMENT ON COLUMN estudiante.direccion_estudiante.created_at IS 'Fecha de creacion de la carrera';
       
   estudiante          postgres    false    219            �           0    0 &   COLUMN direccion_estudiante.updated_at    COMMENT     h   COMMENT ON COLUMN estudiante.direccion_estudiante.updated_at IS 'Fecha de actualizacion de la carrera';
       
   estudiante          postgres    false    219            �           0    0 &   COLUMN direccion_estudiante.deleted_at    COMMENT     f   COMMENT ON COLUMN estudiante.direccion_estudiante.deleted_at IS 'Fecha de eliminacion de la carrera';
       
   estudiante          postgres    false    219            �            1259    67376 %   direccion_estudiante_id_direccion_seq    SEQUENCE     �   CREATE SEQUENCE estudiante.direccion_estudiante_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE estudiante.direccion_estudiante_id_direccion_seq;
    
   estudiante          postgres    false    6    219            �           0    0 %   direccion_estudiante_id_direccion_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE estudiante.direccion_estudiante_id_direccion_seq OWNED BY estudiante.direccion_estudiante.id_direccion;
       
   estudiante          postgres    false    220            �            1259    67377 
   estudiante    TABLE     �  CREATE TABLE estudiante.estudiante (
    id_estudiante integer NOT NULL,
    nombre_estudiante character varying NOT NULL,
    cedula_estudiante character varying NOT NULL,
    email_estudiante character varying NOT NULL,
    edad_estudiante integer NOT NULL,
    numero_estudiante character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    "representanteIdRepresentante" integer,
    "institucionIdInstitucion" integer,
    "direccionIdDireccion" integer
);
 "   DROP TABLE estudiante.estudiante;
    
   estudiante         heap    postgres    false    6            �           0    0    COLUMN estudiante.is_active    COMMENT     T   COMMENT ON COLUMN estudiante.estudiante.is_active IS 'true=activo, false=inactivo';
       
   estudiante          postgres    false    221            �           0    0    COLUMN estudiante.created_at    COMMENT     Y   COMMENT ON COLUMN estudiante.estudiante.created_at IS 'Fecha de creacion de la carrera';
       
   estudiante          postgres    false    221            �           0    0    COLUMN estudiante.updated_at    COMMENT     ^   COMMENT ON COLUMN estudiante.estudiante.updated_at IS 'Fecha de actualizacion de la carrera';
       
   estudiante          postgres    false    221            �           0    0    COLUMN estudiante.deleted_at    COMMENT     \   COMMENT ON COLUMN estudiante.estudiante.deleted_at IS 'Fecha de eliminacion de la carrera';
       
   estudiante          postgres    false    221            �            1259    67385    estudiante_id_estudiante_seq    SEQUENCE     �   CREATE SEQUENCE estudiante.estudiante_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE estudiante.estudiante_id_estudiante_seq;
    
   estudiante          postgres    false    6    221            �           0    0    estudiante_id_estudiante_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE estudiante.estudiante_id_estudiante_seq OWNED BY estudiante.estudiante.id_estudiante;
       
   estudiante          postgres    false    222            �            1259    67386    institucion    TABLE     �  CREATE TABLE estudiante.institucion (
    id_institucion integer NOT NULL,
    nombre character varying NOT NULL,
    tipo character varying NOT NULL,
    nivel character varying NOT NULL,
    grado character varying NOT NULL,
    jornada character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 #   DROP TABLE estudiante.institucion;
    
   estudiante         heap    postgres    false    6            �           0    0    COLUMN institucion.is_active    COMMENT     U   COMMENT ON COLUMN estudiante.institucion.is_active IS 'true=activo, false=inactivo';
       
   estudiante          postgres    false    223            �           0    0    COLUMN institucion.created_at    COMMENT     Z   COMMENT ON COLUMN estudiante.institucion.created_at IS 'Fecha de creacion de la carrera';
       
   estudiante          postgres    false    223            �           0    0    COLUMN institucion.updated_at    COMMENT     _   COMMENT ON COLUMN estudiante.institucion.updated_at IS 'Fecha de actualizacion de la carrera';
       
   estudiante          postgres    false    223            �           0    0    COLUMN institucion.deleted_at    COMMENT     ]   COMMENT ON COLUMN estudiante.institucion.deleted_at IS 'Fecha de eliminacion de la carrera';
       
   estudiante          postgres    false    223            �            1259    67394    institucion_id_institucion_seq    SEQUENCE     �   CREATE SEQUENCE estudiante.institucion_id_institucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE estudiante.institucion_id_institucion_seq;
    
   estudiante          postgres    false    223    6            �           0    0    institucion_id_institucion_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE estudiante.institucion_id_institucion_seq OWNED BY estudiante.institucion.id_institucion;
       
   estudiante          postgres    false    224            �            1259    67395    representante    TABLE     �  CREATE TABLE estudiante.representante (
    id_representante integer NOT NULL,
    nombre_representante character varying NOT NULL,
    cedula_representante character varying NOT NULL,
    email_representante character varying NOT NULL,
    numero_representante character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 %   DROP TABLE estudiante.representante;
    
   estudiante         heap    postgres    false    6            �           0    0    COLUMN representante.is_active    COMMENT     W   COMMENT ON COLUMN estudiante.representante.is_active IS 'true=activo, false=inactivo';
       
   estudiante          postgres    false    225            �           0    0    COLUMN representante.created_at    COMMENT     \   COMMENT ON COLUMN estudiante.representante.created_at IS 'Fecha de creacion de la carrera';
       
   estudiante          postgres    false    225            �           0    0    COLUMN representante.updated_at    COMMENT     a   COMMENT ON COLUMN estudiante.representante.updated_at IS 'Fecha de actualizacion de la carrera';
       
   estudiante          postgres    false    225            �           0    0    COLUMN representante.deleted_at    COMMENT     _   COMMENT ON COLUMN estudiante.representante.deleted_at IS 'Fecha de eliminacion de la carrera';
       
   estudiante          postgres    false    225            �            1259    67403 "   representante_id_representante_seq    SEQUENCE     �   CREATE SEQUENCE estudiante.representante_id_representante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE estudiante.representante_id_representante_seq;
    
   estudiante          postgres    false    6    225            �           0    0 "   representante_id_representante_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE estudiante.representante_id_representante_seq OWNED BY estudiante.representante.id_representante;
       
   estudiante          postgres    false    226            �            1259    67404    informe    TABLE       CREATE TABLE informe.informe (
    id_informe integer NOT NULL,
    estudiante character varying NOT NULL,
    fecha date NOT NULL,
    hora character varying NOT NULL,
    codigo character varying NOT NULL,
    materia character varying NOT NULL,
    tema_general character varying NOT NULL,
    tema_secundario character varying NOT NULL,
    actitud_estudiante character varying NOT NULL,
    tareas_enviadas character varying NOT NULL,
    bases character varying NOT NULL,
    tareas character varying NOT NULL,
    evolucion character varying NOT NULL,
    hora_fecha_llamada timestamp without time zone NOT NULL,
    representante character varying NOT NULL,
    observaciones character varying NOT NULL,
    realizado_por character varying NOT NULL,
    docente integer
);
    DROP TABLE informe.informe;
       informe         heap    postgres    false    7            �            1259    67409    informe_id_informe_seq    SEQUENCE     �   CREATE SEQUENCE informe.informe_id_informe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE informe.informe_id_informe_seq;
       informe          postgres    false    7    227            �           0    0    informe_id_informe_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE informe.informe_id_informe_seq OWNED BY informe.informe.id_informe;
          informe          postgres    false    228            �            1259    67410    aula    TABLE     c  CREATE TABLE sistema.aula (
    id_aula integer NOT NULL,
    "nombreAula" character varying(50) NOT NULL,
    capacidad integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE sistema.aula;
       sistema         heap    postgres    false    8            �           0    0    COLUMN aula.is_active    COMMENT     K   COMMENT ON COLUMN sistema.aula.is_active IS 'true=activo, false=inactivo';
          sistema          postgres    false    229            �           0    0    COLUMN aula.created_at    COMMENT     P   COMMENT ON COLUMN sistema.aula.created_at IS 'Fecha de creacion de la carrera';
          sistema          postgres    false    229            �           0    0    COLUMN aula.updated_at    COMMENT     U   COMMENT ON COLUMN sistema.aula.updated_at IS 'Fecha de actualizacion de la carrera';
          sistema          postgres    false    229            �           0    0    COLUMN aula.deleted_at    COMMENT     S   COMMENT ON COLUMN sistema.aula.deleted_at IS 'Fecha de eliminacion de la carrera';
          sistema          postgres    false    229            �            1259    67416    aula_id_aula_seq    SEQUENCE     �   CREATE SEQUENCE sistema.aula_id_aula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE sistema.aula_id_aula_seq;
       sistema          postgres    false    229    8            �           0    0    aula_id_aula_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE sistema.aula_id_aula_seq OWNED BY sistema.aula.id_aula;
          sistema          postgres    false    230            �            1259    67417    horario    TABLE     �  CREATE TABLE sistema.horario (
    id_horario integer NOT NULL,
    dia character varying(50) NOT NULL,
    "horaInicio" time without time zone NOT NULL,
    "horaSalida" time without time zone NOT NULL,
    modalidad character varying(50),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    is_active boolean DEFAULT true NOT NULL,
    aula integer
);
    DROP TABLE sistema.horario;
       sistema         heap    postgres    false    8            �           0    0    COLUMN horario.created_at    COMMENT     S   COMMENT ON COLUMN sistema.horario.created_at IS 'Fecha de creacion de la carrera';
          sistema          postgres    false    231            �           0    0    COLUMN horario.updated_at    COMMENT     X   COMMENT ON COLUMN sistema.horario.updated_at IS 'Fecha de actualizacion de la carrera';
          sistema          postgres    false    231            �           0    0    COLUMN horario.deleted_at    COMMENT     V   COMMENT ON COLUMN sistema.horario.deleted_at IS 'Fecha de eliminacion de la carrera';
          sistema          postgres    false    231            �           0    0    COLUMN horario.is_active    COMMENT     N   COMMENT ON COLUMN sistema.horario.is_active IS 'true=activo, false=inactivo';
          sistema          postgres    false    231            �            1259    67423    horario_id_horario_seq    SEQUENCE     �   CREATE SEQUENCE sistema.horario_id_horario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE sistema.horario_id_horario_seq;
       sistema          postgres    false    8    231            �           0    0    horario_id_horario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE sistema.horario_id_horario_seq OWNED BY sistema.horario.id_horario;
          sistema          postgres    false    232            �            1259    67424    materia    TABLE     C  CREATE TABLE sistema.materia (
    id_materia integer NOT NULL,
    nombre character varying(50) NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE sistema.materia;
       sistema         heap    postgres    false    8            �           0    0    COLUMN materia.is_active    COMMENT     N   COMMENT ON COLUMN sistema.materia.is_active IS 'true=activo, false=inactivo';
          sistema          postgres    false    233            �           0    0    COLUMN materia.created_at    COMMENT     S   COMMENT ON COLUMN sistema.materia.created_at IS 'Fecha de creacion de la carrera';
          sistema          postgres    false    233            �           0    0    COLUMN materia.updated_at    COMMENT     X   COMMENT ON COLUMN sistema.materia.updated_at IS 'Fecha de actualizacion de la carrera';
          sistema          postgres    false    233            �           0    0    COLUMN materia.deleted_at    COMMENT     V   COMMENT ON COLUMN sistema.materia.deleted_at IS 'Fecha de eliminacion de la carrera';
          sistema          postgres    false    233            �            1259    67430    materia_id_materia_seq    SEQUENCE     �   CREATE SEQUENCE sistema.materia_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE sistema.materia_id_materia_seq;
       sistema          postgres    false    8    233            �           0    0    materia_id_materia_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE sistema.materia_id_materia_seq OWNED BY sistema.materia.id_materia;
          sistema          postgres    false    234            �            1259    67431 	   matricula    TABLE     �  CREATE TABLE sistema.matricula (
    id_matricula integer NOT NULL,
    fecha date NOT NULL,
    "fechaInicio" date NOT NULL,
    "fechaFinal" date NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    alumno integer,
    profesor integer,
    materia integer,
    programacion_id integer
);
    DROP TABLE sistema.matricula;
       sistema         heap    postgres    false    8            �           0    0    COLUMN matricula.is_active    COMMENT     P   COMMENT ON COLUMN sistema.matricula.is_active IS 'true=activo, false=inactivo';
          sistema          postgres    false    235            �           0    0    COLUMN matricula.created_at    COMMENT     U   COMMENT ON COLUMN sistema.matricula.created_at IS 'Fecha de creacion de la carrera';
          sistema          postgres    false    235            �           0    0    COLUMN matricula.updated_at    COMMENT     Z   COMMENT ON COLUMN sistema.matricula.updated_at IS 'Fecha de actualizacion de la carrera';
          sistema          postgres    false    235            �           0    0    COLUMN matricula.deleted_at    COMMENT     X   COMMENT ON COLUMN sistema.matricula.deleted_at IS 'Fecha de eliminacion de la carrera';
          sistema          postgres    false    235            �            1259    67437    matricula_id_matricula_seq    SEQUENCE     �   CREATE SEQUENCE sistema.matricula_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sistema.matricula_id_matricula_seq;
       sistema          postgres    false    235    8            �           0    0    matricula_id_matricula_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sistema.matricula_id_matricula_seq OWNED BY sistema.matricula.id_matricula;
          sistema          postgres    false    236            �            1259    67438    programacion    TABLE     "  CREATE TABLE sistema.programacion (
    id_programacion integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 !   DROP TABLE sistema.programacion;
       sistema         heap    postgres    false    8            �           0    0    COLUMN programacion.is_active    COMMENT     S   COMMENT ON COLUMN sistema.programacion.is_active IS 'true=activo, false=inactivo';
          sistema          postgres    false    237            �           0    0    COLUMN programacion.created_at    COMMENT     X   COMMENT ON COLUMN sistema.programacion.created_at IS 'Fecha de creacion de la carrera';
          sistema          postgres    false    237            �           0    0    COLUMN programacion.updated_at    COMMENT     ]   COMMENT ON COLUMN sistema.programacion.updated_at IS 'Fecha de actualizacion de la carrera';
          sistema          postgres    false    237            �           0    0    COLUMN programacion.deleted_at    COMMENT     [   COMMENT ON COLUMN sistema.programacion.deleted_at IS 'Fecha de eliminacion de la carrera';
          sistema          postgres    false    237            �            1259    67444    programacion_horario    TABLE     u   CREATE TABLE sistema.programacion_horario (
    programacion_id integer NOT NULL,
    horario_id integer NOT NULL
);
 )   DROP TABLE sistema.programacion_horario;
       sistema         heap    postgres    false    8            �            1259    67447     programacion_id_programacion_seq    SEQUENCE     �   CREATE SEQUENCE sistema.programacion_id_programacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE sistema.programacion_id_programacion_seq;
       sistema          postgres    false    8    237            �           0    0     programacion_id_programacion_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE sistema.programacion_id_programacion_seq OWNED BY sistema.programacion.id_programacion;
          sistema          postgres    false    239            �            1259    67448    rol    TABLE       CREATE TABLE usuario.rol (
    id integer NOT NULL,
    "rolNombre" character varying(10) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE usuario.rol;
       usuario         heap    postgres    false    9            �           0    0    COLUMN rol.created_at    COMMENT     O   COMMENT ON COLUMN usuario.rol.created_at IS 'Fecha de creacion de la carrera';
          usuario          postgres    false    240            �           0    0    COLUMN rol.updated_at    COMMENT     T   COMMENT ON COLUMN usuario.rol.updated_at IS 'Fecha de actualizacion de la carrera';
          usuario          postgres    false    240            �           0    0    COLUMN rol.deleted_at    COMMENT     R   COMMENT ON COLUMN usuario.rol.deleted_at IS 'Fecha de eliminacion de la carrera';
          usuario          postgres    false    240            �            1259    67453 
   rol_id_seq    SEQUENCE     �   CREATE SEQUENCE usuario.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE usuario.rol_id_seq;
       usuario          postgres    false    240    9            �           0    0 
   rol_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE usuario.rol_id_seq OWNED BY usuario.rol.id;
          usuario          postgres    false    241            �            1259    67454    usuario    TABLE     �  CREATE TABLE usuario.usuario (
    id_usuario integer NOT NULL,
    nombres_usuario character varying NOT NULL,
    cedula character varying NOT NULL,
    password character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE usuario.usuario;
       usuario         heap    postgres    false    9            �           0    0    COLUMN usuario.is_active    COMMENT     N   COMMENT ON COLUMN usuario.usuario.is_active IS 'true=activo, false=inactivo';
          usuario          postgres    false    242            �           0    0    COLUMN usuario.created_at    COMMENT     S   COMMENT ON COLUMN usuario.usuario.created_at IS 'Fecha de creacion de la carrera';
          usuario          postgres    false    242            �           0    0    COLUMN usuario.updated_at    COMMENT     X   COMMENT ON COLUMN usuario.usuario.updated_at IS 'Fecha de actualizacion de la carrera';
          usuario          postgres    false    242            �           0    0    COLUMN usuario.deleted_at    COMMENT     V   COMMENT ON COLUMN usuario.usuario.deleted_at IS 'Fecha de eliminacion de la carrera';
          usuario          postgres    false    242            �            1259    67462    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE usuario.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE usuario.usuario_id_usuario_seq;
       usuario          postgres    false    9    242            �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE usuario.usuario_id_usuario_seq OWNED BY usuario.usuario.id_usuario;
          usuario          postgres    false    243            �            1259    67463    usuario_materia    TABLE     k   CREATE TABLE usuario.usuario_materia (
    usuario_id integer NOT NULL,
    materia_id integer NOT NULL
);
 $   DROP TABLE usuario.usuario_materia;
       usuario         heap    postgres    false    9            �            1259    67466    usuario_rol    TABLE     c   CREATE TABLE usuario.usuario_rol (
    usuario_id integer NOT NULL,
    rol_id integer NOT NULL
);
     DROP TABLE usuario.usuario_rol;
       usuario         heap    postgres    false    9            �           2604    67469 !   direccion_estudiante id_direccion    DEFAULT     �   ALTER TABLE ONLY estudiante.direccion_estudiante ALTER COLUMN id_direccion SET DEFAULT nextval('estudiante.direccion_estudiante_id_direccion_seq'::regclass);
 T   ALTER TABLE estudiante.direccion_estudiante ALTER COLUMN id_direccion DROP DEFAULT;
    
   estudiante          postgres    false    220    219            �           2604    67470    estudiante id_estudiante    DEFAULT     �   ALTER TABLE ONLY estudiante.estudiante ALTER COLUMN id_estudiante SET DEFAULT nextval('estudiante.estudiante_id_estudiante_seq'::regclass);
 K   ALTER TABLE estudiante.estudiante ALTER COLUMN id_estudiante DROP DEFAULT;
    
   estudiante          postgres    false    222    221            �           2604    67471    institucion id_institucion    DEFAULT     �   ALTER TABLE ONLY estudiante.institucion ALTER COLUMN id_institucion SET DEFAULT nextval('estudiante.institucion_id_institucion_seq'::regclass);
 M   ALTER TABLE estudiante.institucion ALTER COLUMN id_institucion DROP DEFAULT;
    
   estudiante          postgres    false    224    223            �           2604    67472    representante id_representante    DEFAULT     �   ALTER TABLE ONLY estudiante.representante ALTER COLUMN id_representante SET DEFAULT nextval('estudiante.representante_id_representante_seq'::regclass);
 Q   ALTER TABLE estudiante.representante ALTER COLUMN id_representante DROP DEFAULT;
    
   estudiante          postgres    false    226    225            �           2604    67473    informe id_informe    DEFAULT     z   ALTER TABLE ONLY informe.informe ALTER COLUMN id_informe SET DEFAULT nextval('informe.informe_id_informe_seq'::regclass);
 B   ALTER TABLE informe.informe ALTER COLUMN id_informe DROP DEFAULT;
       informe          postgres    false    228    227            �           2604    67474    aula id_aula    DEFAULT     n   ALTER TABLE ONLY sistema.aula ALTER COLUMN id_aula SET DEFAULT nextval('sistema.aula_id_aula_seq'::regclass);
 <   ALTER TABLE sistema.aula ALTER COLUMN id_aula DROP DEFAULT;
       sistema          postgres    false    230    229            �           2604    67475    horario id_horario    DEFAULT     z   ALTER TABLE ONLY sistema.horario ALTER COLUMN id_horario SET DEFAULT nextval('sistema.horario_id_horario_seq'::regclass);
 B   ALTER TABLE sistema.horario ALTER COLUMN id_horario DROP DEFAULT;
       sistema          postgres    false    232    231            �           2604    67476    materia id_materia    DEFAULT     z   ALTER TABLE ONLY sistema.materia ALTER COLUMN id_materia SET DEFAULT nextval('sistema.materia_id_materia_seq'::regclass);
 B   ALTER TABLE sistema.materia ALTER COLUMN id_materia DROP DEFAULT;
       sistema          postgres    false    234    233            �           2604    67477    matricula id_matricula    DEFAULT     �   ALTER TABLE ONLY sistema.matricula ALTER COLUMN id_matricula SET DEFAULT nextval('sistema.matricula_id_matricula_seq'::regclass);
 F   ALTER TABLE sistema.matricula ALTER COLUMN id_matricula DROP DEFAULT;
       sistema          postgres    false    236    235            �           2604    67478    programacion id_programacion    DEFAULT     �   ALTER TABLE ONLY sistema.programacion ALTER COLUMN id_programacion SET DEFAULT nextval('sistema.programacion_id_programacion_seq'::regclass);
 L   ALTER TABLE sistema.programacion ALTER COLUMN id_programacion DROP DEFAULT;
       sistema          postgres    false    239    237            �           2604    67479    rol id    DEFAULT     b   ALTER TABLE ONLY usuario.rol ALTER COLUMN id SET DEFAULT nextval('usuario.rol_id_seq'::regclass);
 6   ALTER TABLE usuario.rol ALTER COLUMN id DROP DEFAULT;
       usuario          postgres    false    241    240            �           2604    67480    usuario id_usuario    DEFAULT     z   ALTER TABLE ONLY usuario.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario.usuario_id_usuario_seq'::regclass);
 B   ALTER TABLE usuario.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       usuario          postgres    false    243    242            �          0    67370    direccion_estudiante 
   TABLE DATA           �   COPY estudiante.direccion_estudiante (id_direccion, ciudad, sector, detalle, is_active, created_at, updated_at, deleted_at) FROM stdin;
 
   estudiante          postgres    false    219   ��       �          0    67377 
   estudiante 
   TABLE DATA             COPY estudiante.estudiante (id_estudiante, nombre_estudiante, cedula_estudiante, email_estudiante, edad_estudiante, numero_estudiante, is_active, created_at, updated_at, deleted_at, "representanteIdRepresentante", "institucionIdInstitucion", "direccionIdDireccion") FROM stdin;
 
   estudiante          postgres    false    221   ��       �          0    67386    institucion 
   TABLE DATA           �   COPY estudiante.institucion (id_institucion, nombre, tipo, nivel, grado, jornada, is_active, created_at, updated_at, deleted_at) FROM stdin;
 
   estudiante          postgres    false    223   ��       �          0    67395    representante 
   TABLE DATA           �   COPY estudiante.representante (id_representante, nombre_representante, cedula_representante, email_representante, numero_representante, is_active, created_at, updated_at, deleted_at) FROM stdin;
 
   estudiante          postgres    false    225   �       �          0    67404    informe 
   TABLE DATA              COPY informe.informe (id_informe, estudiante, fecha, hora, codigo, materia, tema_general, tema_secundario, actitud_estudiante, tareas_enviadas, bases, tareas, evolucion, hora_fecha_llamada, representante, observaciones, realizado_por, docente) FROM stdin;
    informe          postgres    false    227   O�       �          0    67410    aula 
   TABLE DATA           p   COPY sistema.aula (id_aula, "nombreAula", capacidad, is_active, created_at, updated_at, deleted_at) FROM stdin;
    sistema          postgres    false    229   ��       �          0    67417    horario 
   TABLE DATA           �   COPY sistema.horario (id_horario, dia, "horaInicio", "horaSalida", modalidad, created_at, updated_at, deleted_at, is_active, aula) FROM stdin;
    sistema          postgres    false    231   ��       �          0    67424    materia 
   TABLE DATA           e   COPY sistema.materia (id_materia, nombre, is_active, created_at, updated_at, deleted_at) FROM stdin;
    sistema          postgres    false    233   ��       �          0    67431 	   matricula 
   TABLE DATA           �   COPY sistema.matricula (id_matricula, fecha, "fechaInicio", "fechaFinal", is_active, created_at, updated_at, deleted_at, alumno, profesor, materia, programacion_id) FROM stdin;
    sistema          postgres    false    235   ��       �          0    67438    programacion 
   TABLE DATA           g   COPY sistema.programacion (id_programacion, is_active, created_at, updated_at, deleted_at) FROM stdin;
    sistema          postgres    false    237   ��       �          0    67444    programacion_horario 
   TABLE DATA           L   COPY sistema.programacion_horario (programacion_id, horario_id) FROM stdin;
    sistema          postgres    false    238   ��       �          0    67448    rol 
   TABLE DATA           S   COPY usuario.rol (id, "rolNombre", created_at, updated_at, deleted_at) FROM stdin;
    usuario          postgres    false    240   ��       �          0    67454    usuario 
   TABLE DATA           �   COPY usuario.usuario (id_usuario, nombres_usuario, cedula, password, is_active, created_at, updated_at, deleted_at) FROM stdin;
    usuario          postgres    false    242   ?�       �          0    67463    usuario_materia 
   TABLE DATA           B   COPY usuario.usuario_materia (usuario_id, materia_id) FROM stdin;
    usuario          postgres    false    244   ��       �          0    67466    usuario_rol 
   TABLE DATA           :   COPY usuario.usuario_rol (usuario_id, rol_id) FROM stdin;
    usuario          postgres    false    245   �       �           0    0 %   direccion_estudiante_id_direccion_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('estudiante.direccion_estudiante_id_direccion_seq', 5, true);
       
   estudiante          postgres    false    220            �           0    0    estudiante_id_estudiante_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('estudiante.estudiante_id_estudiante_seq', 5, true);
       
   estudiante          postgres    false    222            �           0    0    institucion_id_institucion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('estudiante.institucion_id_institucion_seq', 5, true);
       
   estudiante          postgres    false    224            �           0    0 "   representante_id_representante_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('estudiante.representante_id_representante_seq', 5, true);
       
   estudiante          postgres    false    226            �           0    0    informe_id_informe_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('informe.informe_id_informe_seq', 1, true);
          informe          postgres    false    228            �           0    0    aula_id_aula_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('sistema.aula_id_aula_seq', 6, true);
          sistema          postgres    false    230            �           0    0    horario_id_horario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('sistema.horario_id_horario_seq', 417, true);
          sistema          postgres    false    232            �           0    0    materia_id_materia_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('sistema.materia_id_materia_seq', 10, true);
          sistema          postgres    false    234            �           0    0    matricula_id_matricula_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('sistema.matricula_id_matricula_seq', 8, true);
          sistema          postgres    false    236            �           0    0     programacion_id_programacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('sistema.programacion_id_programacion_seq', 8, true);
          sistema          postgres    false    239            �           0    0 
   rol_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('usuario.rol_id_seq', 2, true);
          usuario          postgres    false    241            �           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('usuario.usuario_id_usuario_seq', 8, true);
          usuario          postgres    false    243            �           2606    67482 3   direccion_estudiante PK_1245b7d2038e54ed05a7e4597f5 
   CONSTRAINT     �   ALTER TABLE ONLY estudiante.direccion_estudiante
    ADD CONSTRAINT "PK_1245b7d2038e54ed05a7e4597f5" PRIMARY KEY (id_direccion);
 c   ALTER TABLE ONLY estudiante.direccion_estudiante DROP CONSTRAINT "PK_1245b7d2038e54ed05a7e4597f5";
    
   estudiante            postgres    false    219            �           2606    67484 *   institucion PK_1431b8bf9b5c853b11d2ad27518 
   CONSTRAINT     z   ALTER TABLE ONLY estudiante.institucion
    ADD CONSTRAINT "PK_1431b8bf9b5c853b11d2ad27518" PRIMARY KEY (id_institucion);
 Z   ALTER TABLE ONLY estudiante.institucion DROP CONSTRAINT "PK_1431b8bf9b5c853b11d2ad27518";
    
   estudiante            postgres    false    223            �           2606    67486 )   estudiante PK_6cc5c3e605bf03ab2dbc39efab5 
   CONSTRAINT     x   ALTER TABLE ONLY estudiante.estudiante
    ADD CONSTRAINT "PK_6cc5c3e605bf03ab2dbc39efab5" PRIMARY KEY (id_estudiante);
 Y   ALTER TABLE ONLY estudiante.estudiante DROP CONSTRAINT "PK_6cc5c3e605bf03ab2dbc39efab5";
    
   estudiante            postgres    false    221            �           2606    67488 ,   representante PK_e029fdd97edd945352004a4970c 
   CONSTRAINT     ~   ALTER TABLE ONLY estudiante.representante
    ADD CONSTRAINT "PK_e029fdd97edd945352004a4970c" PRIMARY KEY (id_representante);
 \   ALTER TABLE ONLY estudiante.representante DROP CONSTRAINT "PK_e029fdd97edd945352004a4970c";
    
   estudiante            postgres    false    225            �           2606    67490 &   informe PK_b4a9e5a90e091a27bb66f27f7d0 
   CONSTRAINT     o   ALTER TABLE ONLY informe.informe
    ADD CONSTRAINT "PK_b4a9e5a90e091a27bb66f27f7d0" PRIMARY KEY (id_informe);
 S   ALTER TABLE ONLY informe.informe DROP CONSTRAINT "PK_b4a9e5a90e091a27bb66f27f7d0";
       informe            postgres    false    227            �           2606    67492 +   programacion PK_2ca3d414dc79e88e4f9665736e4 
   CONSTRAINT     y   ALTER TABLE ONLY sistema.programacion
    ADD CONSTRAINT "PK_2ca3d414dc79e88e4f9665736e4" PRIMARY KEY (id_programacion);
 X   ALTER TABLE ONLY sistema.programacion DROP CONSTRAINT "PK_2ca3d414dc79e88e4f9665736e4";
       sistema            postgres    false    237            �           2606    67494 &   materia PK_697ac9fc6d88c351b207aad1420 
   CONSTRAINT     o   ALTER TABLE ONLY sistema.materia
    ADD CONSTRAINT "PK_697ac9fc6d88c351b207aad1420" PRIMARY KEY (id_materia);
 S   ALTER TABLE ONLY sistema.materia DROP CONSTRAINT "PK_697ac9fc6d88c351b207aad1420";
       sistema            postgres    false    233            �           2606    67496 &   horario PK_8449c701459acf36f475574da20 
   CONSTRAINT     o   ALTER TABLE ONLY sistema.horario
    ADD CONSTRAINT "PK_8449c701459acf36f475574da20" PRIMARY KEY (id_horario);
 S   ALTER TABLE ONLY sistema.horario DROP CONSTRAINT "PK_8449c701459acf36f475574da20";
       sistema            postgres    false    231            �           2606    67498 #   aula PK_93cc459191b4d2e74e86ab65303 
   CONSTRAINT     i   ALTER TABLE ONLY sistema.aula
    ADD CONSTRAINT "PK_93cc459191b4d2e74e86ab65303" PRIMARY KEY (id_aula);
 P   ALTER TABLE ONLY sistema.aula DROP CONSTRAINT "PK_93cc459191b4d2e74e86ab65303";
       sistema            postgres    false    229            �           2606    67500 3   programacion_horario PK_a232e1698ca4ab2a7050474bb17 
   CONSTRAINT     �   ALTER TABLE ONLY sistema.programacion_horario
    ADD CONSTRAINT "PK_a232e1698ca4ab2a7050474bb17" PRIMARY KEY (programacion_id, horario_id);
 `   ALTER TABLE ONLY sistema.programacion_horario DROP CONSTRAINT "PK_a232e1698ca4ab2a7050474bb17";
       sistema            postgres    false    238    238            �           2606    67502 (   matricula PK_f96e4f4ebe3cde7992748122db8 
   CONSTRAINT     s   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "PK_f96e4f4ebe3cde7992748122db8" PRIMARY KEY (id_matricula);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "PK_f96e4f4ebe3cde7992748122db8";
       sistema            postgres    false    235            �           2606    67504 (   matricula REL_796d9632aafece869a251ca9c4 
   CONSTRAINT     q   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "REL_796d9632aafece869a251ca9c4" UNIQUE (programacion_id);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "REL_796d9632aafece869a251ca9c4";
       sistema            postgres    false    235            �           2606    67506 #   aula UQ_04fcfe72b82f5c9277f6206b879 
   CONSTRAINT     i   ALTER TABLE ONLY sistema.aula
    ADD CONSTRAINT "UQ_04fcfe72b82f5c9277f6206b879" UNIQUE ("nombreAula");
 P   ALTER TABLE ONLY sistema.aula DROP CONSTRAINT "UQ_04fcfe72b82f5c9277f6206b879";
       sistema            postgres    false    229            �           2606    67508 &   materia UQ_b19284e58fa32326147952125b6 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.materia
    ADD CONSTRAINT "UQ_b19284e58fa32326147952125b6" UNIQUE (nombre);
 S   ALTER TABLE ONLY sistema.materia DROP CONSTRAINT "UQ_b19284e58fa32326147952125b6";
       sistema            postgres    false    233            �           2606    67510 *   usuario_rol PK_40b321ebb932d588934043a2639 
   CONSTRAINT     {   ALTER TABLE ONLY usuario.usuario_rol
    ADD CONSTRAINT "PK_40b321ebb932d588934043a2639" PRIMARY KEY (usuario_id, rol_id);
 W   ALTER TABLE ONLY usuario.usuario_rol DROP CONSTRAINT "PK_40b321ebb932d588934043a2639";
       usuario            postgres    false    245    245            �           2606    67512 .   usuario_materia PK_9c098017ceff6014b18941a5420 
   CONSTRAINT     �   ALTER TABLE ONLY usuario.usuario_materia
    ADD CONSTRAINT "PK_9c098017ceff6014b18941a5420" PRIMARY KEY (usuario_id, materia_id);
 [   ALTER TABLE ONLY usuario.usuario_materia DROP CONSTRAINT "PK_9c098017ceff6014b18941a5420";
       usuario            postgres    false    244    244            �           2606    67514 "   rol PK_c93a22388638fac311781c7f2dd 
   CONSTRAINT     c   ALTER TABLE ONLY usuario.rol
    ADD CONSTRAINT "PK_c93a22388638fac311781c7f2dd" PRIMARY KEY (id);
 O   ALTER TABLE ONLY usuario.rol DROP CONSTRAINT "PK_c93a22388638fac311781c7f2dd";
       usuario            postgres    false    240            �           2606    67516 &   usuario PK_dd52716c2652e0e23c15530c695 
   CONSTRAINT     o   ALTER TABLE ONLY usuario.usuario
    ADD CONSTRAINT "PK_dd52716c2652e0e23c15530c695" PRIMARY KEY (id_usuario);
 S   ALTER TABLE ONLY usuario.usuario DROP CONSTRAINT "PK_dd52716c2652e0e23c15530c695";
       usuario            postgres    false    242            �           2606    67518 "   rol UQ_219757a66cff5ac7898e2ad9a86 
   CONSTRAINT     g   ALTER TABLE ONLY usuario.rol
    ADD CONSTRAINT "UQ_219757a66cff5ac7898e2ad9a86" UNIQUE ("rolNombre");
 O   ALTER TABLE ONLY usuario.rol DROP CONSTRAINT "UQ_219757a66cff5ac7898e2ad9a86";
       usuario            postgres    false    240            �           1259    67519    IDX_8eedf18ed77192ba2708584169    INDEX     h   CREATE INDEX "IDX_8eedf18ed77192ba2708584169" ON sistema.programacion_horario USING btree (horario_id);
 5   DROP INDEX sistema."IDX_8eedf18ed77192ba2708584169";
       sistema            postgres    false    238            �           1259    67520    IDX_e335d29e54d1c68bf29f8e67c6    INDEX     m   CREATE INDEX "IDX_e335d29e54d1c68bf29f8e67c6" ON sistema.programacion_horario USING btree (programacion_id);
 5   DROP INDEX sistema."IDX_e335d29e54d1c68bf29f8e67c6";
       sistema            postgres    false    238            �           1259    67521    IDX_29e9a9079c7ba01c1b301cf555    INDEX     _   CREATE INDEX "IDX_29e9a9079c7ba01c1b301cf555" ON usuario.usuario_rol USING btree (usuario_id);
 5   DROP INDEX usuario."IDX_29e9a9079c7ba01c1b301cf555";
       usuario            postgres    false    245            �           1259    67522    IDX_700b8dfe4dfd7afd4027c6a653    INDEX     c   CREATE INDEX "IDX_700b8dfe4dfd7afd4027c6a653" ON usuario.usuario_materia USING btree (materia_id);
 5   DROP INDEX usuario."IDX_700b8dfe4dfd7afd4027c6a653";
       usuario            postgres    false    244            �           1259    67523    IDX_ac8911cd54a61461c992654140    INDEX     [   CREATE INDEX "IDX_ac8911cd54a61461c992654140" ON usuario.usuario_rol USING btree (rol_id);
 5   DROP INDEX usuario."IDX_ac8911cd54a61461c992654140";
       usuario            postgres    false    245            �           1259    67524    IDX_cf9b9ffc7e1d296f175863e3ba    INDEX     c   CREATE INDEX "IDX_cf9b9ffc7e1d296f175863e3ba" ON usuario.usuario_materia USING btree (usuario_id);
 5   DROP INDEX usuario."IDX_cf9b9ffc7e1d296f175863e3ba";
       usuario            postgres    false    244            �           2606    67525 )   estudiante FK_27ef7bb710cce3767e72228d76b    FK CONSTRAINT     �   ALTER TABLE ONLY estudiante.estudiante
    ADD CONSTRAINT "FK_27ef7bb710cce3767e72228d76b" FOREIGN KEY ("institucionIdInstitucion") REFERENCES estudiante.institucion(id_institucion);
 Y   ALTER TABLE ONLY estudiante.estudiante DROP CONSTRAINT "FK_27ef7bb710cce3767e72228d76b";
    
   estudiante          postgres    false    223    221    4808            �           2606    67530 )   estudiante FK_63fae4b1c48c3d8622ba6770d10    FK CONSTRAINT     �   ALTER TABLE ONLY estudiante.estudiante
    ADD CONSTRAINT "FK_63fae4b1c48c3d8622ba6770d10" FOREIGN KEY ("direccionIdDireccion") REFERENCES estudiante.direccion_estudiante(id_direccion);
 Y   ALTER TABLE ONLY estudiante.estudiante DROP CONSTRAINT "FK_63fae4b1c48c3d8622ba6770d10";
    
   estudiante          postgres    false    221    4804    219            �           2606    67535 )   estudiante FK_c7754fde18a1cd9500e03c1640f    FK CONSTRAINT     �   ALTER TABLE ONLY estudiante.estudiante
    ADD CONSTRAINT "FK_c7754fde18a1cd9500e03c1640f" FOREIGN KEY ("representanteIdRepresentante") REFERENCES estudiante.representante(id_representante);
 Y   ALTER TABLE ONLY estudiante.estudiante DROP CONSTRAINT "FK_c7754fde18a1cd9500e03c1640f";
    
   estudiante          postgres    false    221    4810    225            �           2606    67540 &   informe FK_7cacb556413db28f870492b0c1d    FK CONSTRAINT     �   ALTER TABLE ONLY informe.informe
    ADD CONSTRAINT "FK_7cacb556413db28f870492b0c1d" FOREIGN KEY (docente) REFERENCES usuario.usuario(id_usuario);
 S   ALTER TABLE ONLY informe.informe DROP CONSTRAINT "FK_7cacb556413db28f870492b0c1d";
       informe          postgres    false    242    227    4838            �           2606    67545 (   matricula FK_43a02806ea1a518f15ad70ad8cd    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "FK_43a02806ea1a518f15ad70ad8cd" FOREIGN KEY (profesor) REFERENCES usuario.usuario(id_usuario);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "FK_43a02806ea1a518f15ad70ad8cd";
       sistema          postgres    false    242    235    4838            �           2606    67550 (   matricula FK_64923d8ab10714d4e50f827f196    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "FK_64923d8ab10714d4e50f827f196" FOREIGN KEY (alumno) REFERENCES estudiante.estudiante(id_estudiante);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "FK_64923d8ab10714d4e50f827f196";
       sistema          postgres    false    221    4806    235            �           2606    67555 (   matricula FK_65e6396b879b78410d95c76b6af    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "FK_65e6396b879b78410d95c76b6af" FOREIGN KEY (materia) REFERENCES sistema.materia(id_materia);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "FK_65e6396b879b78410d95c76b6af";
       sistema          postgres    false    233    4820    235            �           2606    67560 (   matricula FK_796d9632aafece869a251ca9c47    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.matricula
    ADD CONSTRAINT "FK_796d9632aafece869a251ca9c47" FOREIGN KEY (programacion_id) REFERENCES sistema.programacion(id_programacion);
 U   ALTER TABLE ONLY sistema.matricula DROP CONSTRAINT "FK_796d9632aafece869a251ca9c47";
       sistema          postgres    false    4828    237    235            �           2606    67565 3   programacion_horario FK_8eedf18ed77192ba27085841696    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.programacion_horario
    ADD CONSTRAINT "FK_8eedf18ed77192ba27085841696" FOREIGN KEY (horario_id) REFERENCES sistema.horario(id_horario);
 `   ALTER TABLE ONLY sistema.programacion_horario DROP CONSTRAINT "FK_8eedf18ed77192ba27085841696";
       sistema          postgres    false    4818    231    238            �           2606    67570 3   programacion_horario FK_e335d29e54d1c68bf29f8e67c62    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.programacion_horario
    ADD CONSTRAINT "FK_e335d29e54d1c68bf29f8e67c62" FOREIGN KEY (programacion_id) REFERENCES sistema.programacion(id_programacion) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY sistema.programacion_horario DROP CONSTRAINT "FK_e335d29e54d1c68bf29f8e67c62";
       sistema          postgres    false    238    237    4828            �           2606    67575 &   horario FK_e817c82e56e117e3adefa44f244    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.horario
    ADD CONSTRAINT "FK_e817c82e56e117e3adefa44f244" FOREIGN KEY (aula) REFERENCES sistema.aula(id_aula);
 S   ALTER TABLE ONLY sistema.horario DROP CONSTRAINT "FK_e817c82e56e117e3adefa44f244";
       sistema          postgres    false    229    231    4814            �           2606    67580 *   usuario_rol FK_29e9a9079c7ba01c1b301cf5555    FK CONSTRAINT     �   ALTER TABLE ONLY usuario.usuario_rol
    ADD CONSTRAINT "FK_29e9a9079c7ba01c1b301cf5555" FOREIGN KEY (usuario_id) REFERENCES usuario.usuario(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY usuario.usuario_rol DROP CONSTRAINT "FK_29e9a9079c7ba01c1b301cf5555";
       usuario          postgres    false    245    4838    242            �           2606    67585 .   usuario_materia FK_700b8dfe4dfd7afd4027c6a6534    FK CONSTRAINT     �   ALTER TABLE ONLY usuario.usuario_materia
    ADD CONSTRAINT "FK_700b8dfe4dfd7afd4027c6a6534" FOREIGN KEY (materia_id) REFERENCES sistema.materia(id_materia);
 [   ALTER TABLE ONLY usuario.usuario_materia DROP CONSTRAINT "FK_700b8dfe4dfd7afd4027c6a6534";
       usuario          postgres    false    244    233    4820            �           2606    67590 *   usuario_rol FK_ac8911cd54a61461c9926541401    FK CONSTRAINT     �   ALTER TABLE ONLY usuario.usuario_rol
    ADD CONSTRAINT "FK_ac8911cd54a61461c9926541401" FOREIGN KEY (rol_id) REFERENCES usuario.rol(id);
 W   ALTER TABLE ONLY usuario.usuario_rol DROP CONSTRAINT "FK_ac8911cd54a61461c9926541401";
       usuario          postgres    false    245    4834    240            �           2606    67595 .   usuario_materia FK_cf9b9ffc7e1d296f175863e3baf    FK CONSTRAINT     �   ALTER TABLE ONLY usuario.usuario_materia
    ADD CONSTRAINT "FK_cf9b9ffc7e1d296f175863e3baf" FOREIGN KEY (usuario_id) REFERENCES usuario.usuario(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY usuario.usuario_materia DROP CONSTRAINT "FK_cf9b9ffc7e1d296f175863e3baf";
       usuario          postgres    false    4838    242    244            �   �   x��н
�0��9�
o !9_�4Y�\q�kA[�����(��n�����kسoٱ���YǠ`����(��$<\�	eWj����u�v��6>����a
 �)s�xRL#xW��uN��(��&ӌ����O��M7��������j�K֭VnY��d��-�	��FPy /���s��tM!9�/7j�      �   D  x����n1�k�)�����o�"E�*�R�8�'��C��>A ��#���5����~�z;��YAD�!8�x�퐻�|O�V�c����Zt����� 4�2�j럸�E�{�۩���<O�%��r��|/|'���O�a
���+|,�N���9���� 	��e�Ӧ��ܮ��}{���"��dB��e�9Y���ES����uE���s�K-��އ|����m1�,�E/�y,&��FK|�c�z�X2@��o1T��ʛ�4P��'k�����#:�!�a?w�~�c(|.%�_�������]��"�6Z�}�7      �     x���AN�0�׏SpH�
�vg&.��&�L:�њBI)�ɵG��Y�	2��/y��>
w�m����b��0�Gg��y��	��TU���f���b�фh�`U,��DHJe�J�ۦ ����v����~��ۭ�3O�%����$�R��#��h�1؝O��o��k�Ѝ�.�S`&=��'k�R�M'��˖V���&g�/�ݧ󫷶�������J?[�LP���$rIDY�� ]�8�*�����*��Ui�F��@�S���L��E����MU�e�e�q櫕      �   "  x���Mj�0�|
]�B3��*�u�(�n��(.�Ilz����4I[�D;����5��$_��� @k�񢣱��kGM��C't�цc4�hk�5��)dk&����I7���a��CO3��F�Ѡ�����\��5�J�47�EʮO�Dr=����͎�!%�P��Υk5d�;i�n���U+֥�������n,S�g��*����r���O4�!�\�aA�R�4O��ݴr��@����i��s������9�Y�;���k0�MR?���_�slTUU_��      �   �   x�3�t-.IMJ�Sp/M���KOTHM�,�4202�50�52�44�2��T611��M,I�=��$39�3����X��-�Tp*M��&�� ْ���d��"+N�Ģ�k����9��2+9=���@�ڟ��i����� �:+      �   �   x���;�0��99E/��<6.�	�tg��H%(J����l
��m[(P�Fք��,Ͱ��V.ا�������elX,O�C�KN�U���w�Kg5�J���~j�|X�h5y_F����<q^[_@�,�N�ea{Yv�W��Y�&Vi���f��Z!����ZN      �   �  x���[j\G����*�]�]}�"��(�
�Y��s,|��%��tA�1��T������׻�PoB��:�����O��O4]�Vy��"k71�C�!��`�������oW�+����K鏋8(iW��Eە�q�Jޕ�qIJٕ�q1�����d�����E���K�`dg�����/�׿��_ٿ��u����> ���1 d� �u�� �O_n�7���� ����u�uh��&P��.P��6���}��;�A�;�+A�<��	���R�>|���y�b��{!n��������!�H��B(��H��h#�&b)�M�H�.�XG�u_�6R�+#��r�i���#���ww�qZ���4N���i�DR>��t��}��������8�S��o2��n������q]���)̺�&���a}�.���w;X���!�y��l��=�w���r��j��\wC��m��\�C.�r= �����.��uC�c2���rL�Q���$�1|�D9&��(������Oߜ�D)�q]���(�;�+���n�*�q]U��[�cw\�CM�q�պ�j�����y�j�����y�Z��{���ӷ/�_��^M�u3��!������f�Z> �������V������9S8$ߋ�p�磦p绦pL�Ӧp���p�����'��>�}������}���۹�����gJ6�L�\WKuz�Zj�s���q��j_��dz��Z����j)N�_WKiz�Z���j)OaWKe~o������T�_].���H�4�Dz���,�{&���Ci8���J�}��XN$���p%�=��^<�[���7��.��������jM/��������Z�x�Z��W���|�p�V.�����s��Z�_�-�R����d~k������j*�/�VSi~t������j*�O�VSe~}������T�ߠ-�츚p�L6�Ty�&n'�g��U��Ɇ�*��d�y��x����{>�pd�=�l���P6�Zy��<\[yϨ,��Ք��lVSq~i��J�c�Ք��mVSy~r��*��T)(�|k{��7��?|vtsA�)d ��@�Q���A "N��8�q2H?�) ����C�F��j ɇ@B����E{�H�!���C�L2�
�<�$�����`�!���C,�i�X�b%�u�e0�+äC���*�9�j0����!��C,!!�@J2�"�8J$��H�!P&��@��U�n�H���m$$�HQ�!RD��H	�"�5D�(���PC��2��4@Ҁ�")�3D�$�(�4C #a�@�deTI�!P#A@1�c7��cJ��ŧ�R�$A�I
��"�2LJ �0�@�aRi�I�&U�g��@�AR
 �0IH�a��LèHB�I5�2k�I�aT!��Q�$F5me�dF		7�R�n�a�aZ���i�2L8L+0�0�ôC�r�)�ic���Et�H�a���èL��
	;��$�0�����H�a����(%��Q�DF%�y�e(�0+��ì�b�*�=�j(� ��|�%(�0KQ�aVD�Y	�f�?��$�0�� ĨJ��@�:�'��ө		A�R��ʍ��J�o���?|v��D���@"��D�q
@ĩ ������N��?�Q�}�I�!P"ɇ@F��2�=*$����C�FB�$��C !��@J�"	<J0��`�!V�i�X�bU�u��`���t�%0�Ka�!V�1�X	�b	9�$����C�J�	8 ���	�7R�nI�!P"ن@F��2J6D*(���\C��b�R@��H�B�e"Ei��P�!��@C����
�3�$���0 $�HH�!��$C�H���1���Y������g�6�@�aRI�ID&U�e��@�AR �0I@�a��<ä�H4L2i�I�aT!��Q��F5kU�5�l�$�0*�hèD����Fe�n�V`�aZ���i�� �F�)�8L�0�0-���4�1�i��tUI�aT#QQ-���(!a�QJ��"�;�J$�0�H�aT&��Q�DFU�y��P�!V
�f	�=�R�{�Q�aVBɇY���2�>�*(�0���ìF��$���(!�QJ�"�@�J$1�Hb��l2�W�����~����z.����.�>}��&�W������q������?_
�BN��t�?5=�s=��ч�W�WWW�n�!*      �   >  x���=n� ����0��k�JZ���`�FHK6�ЭGɘ!���J�8%�����?������|oQB@�7�5QFp#f��m�xR������)a��DS)h����b��^�U�(Q�nc�8z�����
KM�`EiS3%�n��v>��%������ٓh��BS=�/7��{jW���a���i�@���0��-Z��u�����L\7��-��L*�i�hG�b��x�����$s��NM�(oj��V�ݒfۧ�,4np���f��-����zӃO[�R����[��o/hk��`�DPOk��UU���      �   �   x���ݭ�0��x�.��q���������/G:�>�1%F�ygZ�Wl�vو�hGɄZ��{y�$N%Q"�H"�Q�c )�M�B��K��A��\W�c�F6�N�ų�*Ӳ>�w��O@C�Wl�t�LEL[`���ڰ�/��-�D�i���K;-I,��K�x��HC����d�����[l�ڧU�?,��՞n�7�6 	����y��� � _��r      �   �   x����!E��P`�6�
����x�dGY_���t<Fֆܘ*�](�>�f�������&6�R�R��71[%\�K��Q>į��	Y2���{Bl5�~'t��cb�A���8Y9�� ,#:���eC��^����Qv!��	���ng�      �   ;   x���� ��TL&�6�^�<n�������y]��E1�*&�r�-�1�=$�#
      �   O   x�3�LL����4202�50�52T0��2��25�337
������2�,-N-BWgie`�gi`hfa��4Y�)1z\\\ �b>      �   �  x����r�@�5>��lm{�����'�
u7 Dqj@P���6)M�X�-�
�:�)�`�c�z�H�HA�J5�#̔� �"�y1��4>�����{9$���n�j��i�4�^,w9�b1ݚS+W2C�V �`T��Pu�@@��U �#�7(��4��8����tl�r��(�|[�2�O)��U0u���#�g�ָ������46��h��*�>��H%�<Ј�Q�h*C�F��l�H7|ǚ���c��>�K�5<9������R}�z���m[���E�Ѐ���SIS�W/O�e$����{��3��ڍ6��+�Z�k��Z�A�;�7
�y� �~�m��v}n��n��M#d��0�	�!�4�L���<�|'$3�bJ����`���n&�*i����5	y�ȦdN�-f�����Y�g0ʁ�5�l��T2J�{x�K�A�}5F%M�����'1uv�X��Q1�$&^��
m;i��O��Ơ9�������?aX5T$*�`_)����[c��itݐ^O�"~����Rw|�����p���
B��k�d2k���6�g��u���e��.b���<ln@�N)�ߢ�aC�LNH�
K�N��R������YA�Y�'l�G t�(��%�3[��d�J�A퀖��`��O��{��H֣3�L�����R��W<$      �      x������ � �      �   +   x�Ź 0��&��|�d�9rA�����扅���7$}���     