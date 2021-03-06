PGDMP     (                    y            QualityClothes    12.4    12.4 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24939    QualityClothes    DATABASE     ?   CREATE DATABASE "QualityClothes" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
     DROP DATABASE "QualityClothes";
                postgres    false            ?            1259    25027 
   Categorias    TABLE     =  CREATE TABLE public."Categorias" (
    "idCategoria" integer NOT NULL,
    "nombreCategoria" character varying(50) NOT NULL,
    "descripcionCategoria" character varying(150) NOT NULL,
    "imagenCategoria" character varying(500) NOT NULL,
    "idEstadoCategoria" integer NOT NULL,
    "idGenero" integer NOT NULL
);
     DROP TABLE public."Categorias";
       public         heap    postgres    false            ?            1259    25025    Categorias_idCategoria_seq    SEQUENCE     ?   CREATE SEQUENCE public."Categorias_idCategoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Categorias_idCategoria_seq";
       public          postgres    false    217            ?           0    0    Categorias_idCategoria_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Categorias_idCategoria_seq" OWNED BY public."Categorias"."idCategoria";
          public          postgres    false    216            ?            1259    25087    Clientes    TABLE       CREATE TABLE public."Clientes" (
    "idCliente" integer NOT NULL,
    "nombresCliente" character varying(50) NOT NULL,
    "apellidosCliente" character varying(50) NOT NULL,
    "correoCliente" character varying(75) NOT NULL,
    "claveCliente" character varying(250) NOT NULL,
    "telefonoCliente" character varying(10) NOT NULL,
    "nacimientoCliente" date NOT NULL,
    "duiCliente" character varying(10) NOT NULL,
    "direccionCliente" character varying(200) NOT NULL,
    "idEstadoCliente" integer NOT NULL
);
    DROP TABLE public."Clientes";
       public         heap    postgres    false            ?            1259    25085    Clientes_idCliente_seq    SEQUENCE     ?   CREATE SEQUENCE public."Clientes_idCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Clientes_idCliente_seq";
       public          postgres    false    223            ?           0    0    Clientes_idCliente_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Clientes_idCliente_seq" OWNED BY public."Clientes"."idCliente";
          public          postgres    false    222            ?            1259    25133    DetallePedido    TABLE     ?   CREATE TABLE public."DetallePedido" (
    "idDetallePedido" integer NOT NULL,
    "cantidadDetallePedido" numeric NOT NULL,
    "precioDetallePedido" money NOT NULL,
    "idProducto" integer NOT NULL,
    "idPedido" integer NOT NULL
);
 #   DROP TABLE public."DetallePedido";
       public         heap    postgres    false            ?            1259    25131 !   DetallePedido_idDetallePedido_seq    SEQUENCE     ?   CREATE SEQUENCE public."DetallePedido_idDetallePedido_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."DetallePedido_idDetallePedido_seq";
       public          postgres    false    229            ?           0    0 !   DetallePedido_idDetallePedido_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."DetallePedido_idDetallePedido_seq" OWNED BY public."DetallePedido"."idDetallePedido";
          public          postgres    false    228            ?            1259    25017    EstadoCategoria    TABLE     ?   CREATE TABLE public."EstadoCategoria" (
    "idEstadoCategoria" integer NOT NULL,
    "estadoCategoria" character varying(25) NOT NULL
);
 %   DROP TABLE public."EstadoCategoria";
       public         heap    postgres    false            ?            1259    25015 %   EstadoCategoria_idEstadoCategoria_seq    SEQUENCE     ?   CREATE SEQUENCE public."EstadoCategoria_idEstadoCategoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."EstadoCategoria_idEstadoCategoria_seq";
       public          postgres    false    215            ?           0    0 %   EstadoCategoria_idEstadoCategoria_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."EstadoCategoria_idEstadoCategoria_seq" OWNED BY public."EstadoCategoria"."idEstadoCategoria";
          public          postgres    false    214            ?            1259    25077    EstadoCliente    TABLE     ?   CREATE TABLE public."EstadoCliente" (
    "idEstadoCliente" integer NOT NULL,
    "estadoCliente" character varying(25) NOT NULL
);
 #   DROP TABLE public."EstadoCliente";
       public         heap    postgres    false            ?            1259    25075 !   EstadoCliente_idEstadoCliente_seq    SEQUENCE     ?   CREATE SEQUENCE public."EstadoCliente_idEstadoCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."EstadoCliente_idEstadoCliente_seq";
       public          postgres    false    221            ?           0    0 !   EstadoCliente_idEstadoCliente_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."EstadoCliente_idEstadoCliente_seq" OWNED BY public."EstadoCliente"."idEstadoCliente";
          public          postgres    false    220            ?            1259    25105    EstadoPedido    TABLE     ?   CREATE TABLE public."EstadoPedido" (
    "idEstadoPedido" integer NOT NULL,
    "estadoPedido" character varying(25) NOT NULL
);
 "   DROP TABLE public."EstadoPedido";
       public         heap    postgres    false            ?            1259    25103    EstadoPedido_idEstadoPedido_seq    SEQUENCE     ?   CREATE SEQUENCE public."EstadoPedido_idEstadoPedido_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."EstadoPedido_idEstadoPedido_seq";
       public          postgres    false    225            ?           0    0    EstadoPedido_idEstadoPedido_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."EstadoPedido_idEstadoPedido_seq" OWNED BY public."EstadoPedido"."idEstadoPedido";
          public          postgres    false    224            ?            1259    24997    EstadoProducto    TABLE     ?   CREATE TABLE public."EstadoProducto" (
    "idEstadoProducto" integer NOT NULL,
    "estadoProducto" character varying(25) NOT NULL
);
 $   DROP TABLE public."EstadoProducto";
       public         heap    postgres    false            ?            1259    24995 #   EstadoProducto_idEstadoProducto_seq    SEQUENCE     ?   CREATE SEQUENCE public."EstadoProducto_idEstadoProducto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."EstadoProducto_idEstadoProducto_seq";
       public          postgres    false    211            ?           0    0 #   EstadoProducto_idEstadoProducto_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."EstadoProducto_idEstadoProducto_seq" OWNED BY public."EstadoProducto"."idEstadoProducto";
          public          postgres    false    210            ?            1259    24952    EstadoUsuario    TABLE     ?   CREATE TABLE public."EstadoUsuario" (
    "idEstadoUsuario" integer NOT NULL,
    "estadoUsuario" character varying(50) NOT NULL
);
 #   DROP TABLE public."EstadoUsuario";
       public         heap    postgres    false            ?            1259    24950 !   EstadoUsuario_idEstadoUsuario_seq    SEQUENCE     ?   CREATE SEQUENCE public."EstadoUsuario_idEstadoUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."EstadoUsuario_idEstadoUsuario_seq";
       public          postgres    false    205            ?           0    0 !   EstadoUsuario_idEstadoUsuario_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."EstadoUsuario_idEstadoUsuario_seq" OWNED BY public."EstadoUsuario"."idEstadoUsuario";
          public          postgres    false    204            ?            1259    25007    Genero    TABLE     f   CREATE TABLE public."Genero" (
    "idGenero" integer NOT NULL,
    "nombreGenero" "char" NOT NULL
);
    DROP TABLE public."Genero";
       public         heap    postgres    false            ?            1259    25005    Genero_idGenero_seq    SEQUENCE     ?   CREATE SEQUENCE public."Genero_idGenero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Genero_idGenero_seq";
       public          postgres    false    213            ?           0    0    Genero_idGenero_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Genero_idGenero_seq" OWNED BY public."Genero"."idGenero";
          public          postgres    false    212            ?            1259    25115    Pedido    TABLE     ?   CREATE TABLE public."Pedido" (
    "idPedido" integer NOT NULL,
    "fechaPedido" date NOT NULL,
    "fechaEntregaPedido" date NOT NULL,
    "idCliente" integer NOT NULL,
    "idEstadoPedido" integer NOT NULL
);
    DROP TABLE public."Pedido";
       public         heap    postgres    false            ?            1259    25113    Pedido_idPedido_seq    SEQUENCE     ?   CREATE SEQUENCE public."Pedido_idPedido_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Pedido_idPedido_seq";
       public          postgres    false    227            ?           0    0    Pedido_idPedido_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Pedido_idPedido_seq" OWNED BY public."Pedido"."idPedido";
          public          postgres    false    226            ?            1259    25047 	   Productos    TABLE     ?  CREATE TABLE public."Productos" (
    "idProducto" integer NOT NULL,
    "nombreProducto" character varying(50) NOT NULL,
    "descripcionProducto" character varying(200) NOT NULL,
    "precioProducto" money NOT NULL,
    "imagenProducto" character varying(500) NOT NULL,
    "idEstadoProducto" integer NOT NULL,
    "idTalla" integer NOT NULL,
    "idCategoria" integer NOT NULL,
    "idUsuario" integer NOT NULL
);
    DROP TABLE public."Productos";
       public         heap    postgres    false            ?            1259    25045    Productos_idProducto_seq    SEQUENCE     ?   CREATE SEQUENCE public."Productos_idProducto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Productos_idProducto_seq";
       public          postgres    false    219            ?           0    0    Productos_idProducto_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Productos_idProducto_seq" OWNED BY public."Productos"."idProducto";
          public          postgres    false    218            ?            1259    24987    Tallas    TABLE     r   CREATE TABLE public."Tallas" (
    "idTalla" integer NOT NULL,
    "nombreTalla" character varying(4) NOT NULL
);
    DROP TABLE public."Tallas";
       public         heap    postgres    false            ?            1259    24985    Tallas_idTalla_seq    SEQUENCE     ?   CREATE SEQUENCE public."Tallas_idTalla_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Tallas_idTalla_seq";
       public          postgres    false    209            ?           0    0    Tallas_idTalla_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Tallas_idTalla_seq" OWNED BY public."Tallas"."idTalla";
          public          postgres    false    208            ?            1259    25155 	   TipoTalla    TABLE     x   CREATE TABLE public."TipoTalla" (
    "idTipoTalla" integer NOT NULL,
    "tipoTalla" character varying(25) NOT NULL
);
    DROP TABLE public."TipoTalla";
       public         heap    postgres    false            ?            1259    25153    TipoTalla_idTipoTalla_seq    SEQUENCE     ?   CREATE SEQUENCE public."TipoTalla_idTipoTalla_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."TipoTalla_idTipoTalla_seq";
       public          postgres    false    231            ?           0    0    TipoTalla_idTipoTalla_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."TipoTalla_idTipoTalla_seq" OWNED BY public."TipoTalla"."idTipoTalla";
          public          postgres    false    230            ?            1259    24942    TipoUsuario    TABLE     ~   CREATE TABLE public."TipoUsuario" (
    "idTipoUsuario" integer NOT NULL,
    "tipoUsuario" character varying(25) NOT NULL
);
 !   DROP TABLE public."TipoUsuario";
       public         heap    postgres    false            ?            1259    24940    TipoUsuario_idTipoUsuario_seq    SEQUENCE     ?   CREATE SEQUENCE public."TipoUsuario_idTipoUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."TipoUsuario_idTipoUsuario_seq";
       public          postgres    false    203            ?           0    0    TipoUsuario_idTipoUsuario_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."TipoUsuario_idTipoUsuario_seq" OWNED BY public."TipoUsuario"."idTipoUsuario";
          public          postgres    false    202            ?            1259    24962    Usuarios    TABLE     ?  CREATE TABLE public."Usuarios" (
    "idUsuario" integer NOT NULL,
    "nombresUsuario" character varying(50) NOT NULL,
    "apellidosUsuario" character varying(50) NOT NULL,
    "correoUsuario" character varying(75) NOT NULL,
    usuario character varying(25) NOT NULL,
    "claveUsuario" character varying(250) NOT NULL,
    "idTipoUsuario" integer NOT NULL,
    "idEstadoUsuario" integer NOT NULL
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false            ?            1259    24960    Usuarios_idUsuario_seq    SEQUENCE     ?   CREATE SEQUENCE public."Usuarios_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Usuarios_idUsuario_seq";
       public          postgres    false    207            ?           0    0    Usuarios_idUsuario_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Usuarios_idUsuario_seq" OWNED BY public."Usuarios"."idUsuario";
          public          postgres    false    206            ?
           2604    25030    Categorias idCategoria    DEFAULT     ?   ALTER TABLE ONLY public."Categorias" ALTER COLUMN "idCategoria" SET DEFAULT nextval('public."Categorias_idCategoria_seq"'::regclass);
 I   ALTER TABLE public."Categorias" ALTER COLUMN "idCategoria" DROP DEFAULT;
       public          postgres    false    216    217    217            ?
           2604    25090    Clientes idCliente    DEFAULT     ~   ALTER TABLE ONLY public."Clientes" ALTER COLUMN "idCliente" SET DEFAULT nextval('public."Clientes_idCliente_seq"'::regclass);
 E   ALTER TABLE public."Clientes" ALTER COLUMN "idCliente" DROP DEFAULT;
       public          postgres    false    222    223    223            ?
           2604    25136    DetallePedido idDetallePedido    DEFAULT     ?   ALTER TABLE ONLY public."DetallePedido" ALTER COLUMN "idDetallePedido" SET DEFAULT nextval('public."DetallePedido_idDetallePedido_seq"'::regclass);
 P   ALTER TABLE public."DetallePedido" ALTER COLUMN "idDetallePedido" DROP DEFAULT;
       public          postgres    false    228    229    229            ?
           2604    25020 !   EstadoCategoria idEstadoCategoria    DEFAULT     ?   ALTER TABLE ONLY public."EstadoCategoria" ALTER COLUMN "idEstadoCategoria" SET DEFAULT nextval('public."EstadoCategoria_idEstadoCategoria_seq"'::regclass);
 T   ALTER TABLE public."EstadoCategoria" ALTER COLUMN "idEstadoCategoria" DROP DEFAULT;
       public          postgres    false    214    215    215            ?
           2604    25080    EstadoCliente idEstadoCliente    DEFAULT     ?   ALTER TABLE ONLY public."EstadoCliente" ALTER COLUMN "idEstadoCliente" SET DEFAULT nextval('public."EstadoCliente_idEstadoCliente_seq"'::regclass);
 P   ALTER TABLE public."EstadoCliente" ALTER COLUMN "idEstadoCliente" DROP DEFAULT;
       public          postgres    false    221    220    221            ?
           2604    25108    EstadoPedido idEstadoPedido    DEFAULT     ?   ALTER TABLE ONLY public."EstadoPedido" ALTER COLUMN "idEstadoPedido" SET DEFAULT nextval('public."EstadoPedido_idEstadoPedido_seq"'::regclass);
 N   ALTER TABLE public."EstadoPedido" ALTER COLUMN "idEstadoPedido" DROP DEFAULT;
       public          postgres    false    225    224    225            ?
           2604    25000    EstadoProducto idEstadoProducto    DEFAULT     ?   ALTER TABLE ONLY public."EstadoProducto" ALTER COLUMN "idEstadoProducto" SET DEFAULT nextval('public."EstadoProducto_idEstadoProducto_seq"'::regclass);
 R   ALTER TABLE public."EstadoProducto" ALTER COLUMN "idEstadoProducto" DROP DEFAULT;
       public          postgres    false    211    210    211            ?
           2604    24955    EstadoUsuario idEstadoUsuario    DEFAULT     ?   ALTER TABLE ONLY public."EstadoUsuario" ALTER COLUMN "idEstadoUsuario" SET DEFAULT nextval('public."EstadoUsuario_idEstadoUsuario_seq"'::regclass);
 P   ALTER TABLE public."EstadoUsuario" ALTER COLUMN "idEstadoUsuario" DROP DEFAULT;
       public          postgres    false    204    205    205            ?
           2604    25010    Genero idGenero    DEFAULT     x   ALTER TABLE ONLY public."Genero" ALTER COLUMN "idGenero" SET DEFAULT nextval('public."Genero_idGenero_seq"'::regclass);
 B   ALTER TABLE public."Genero" ALTER COLUMN "idGenero" DROP DEFAULT;
       public          postgres    false    213    212    213            ?
           2604    25118    Pedido idPedido    DEFAULT     x   ALTER TABLE ONLY public."Pedido" ALTER COLUMN "idPedido" SET DEFAULT nextval('public."Pedido_idPedido_seq"'::regclass);
 B   ALTER TABLE public."Pedido" ALTER COLUMN "idPedido" DROP DEFAULT;
       public          postgres    false    226    227    227            ?
           2604    25050    Productos idProducto    DEFAULT     ?   ALTER TABLE ONLY public."Productos" ALTER COLUMN "idProducto" SET DEFAULT nextval('public."Productos_idProducto_seq"'::regclass);
 G   ALTER TABLE public."Productos" ALTER COLUMN "idProducto" DROP DEFAULT;
       public          postgres    false    218    219    219            ?
           2604    24990    Tallas idTalla    DEFAULT     v   ALTER TABLE ONLY public."Tallas" ALTER COLUMN "idTalla" SET DEFAULT nextval('public."Tallas_idTalla_seq"'::regclass);
 A   ALTER TABLE public."Tallas" ALTER COLUMN "idTalla" DROP DEFAULT;
       public          postgres    false    208    209    209            ?
           2604    25158    TipoTalla idTipoTalla    DEFAULT     ?   ALTER TABLE ONLY public."TipoTalla" ALTER COLUMN "idTipoTalla" SET DEFAULT nextval('public."TipoTalla_idTipoTalla_seq"'::regclass);
 H   ALTER TABLE public."TipoTalla" ALTER COLUMN "idTipoTalla" DROP DEFAULT;
       public          postgres    false    231    230    231            ?
           2604    24945    TipoUsuario idTipoUsuario    DEFAULT     ?   ALTER TABLE ONLY public."TipoUsuario" ALTER COLUMN "idTipoUsuario" SET DEFAULT nextval('public."TipoUsuario_idTipoUsuario_seq"'::regclass);
 L   ALTER TABLE public."TipoUsuario" ALTER COLUMN "idTipoUsuario" DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    24965    Usuarios idUsuario    DEFAULT     ~   ALTER TABLE ONLY public."Usuarios" ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."Usuarios_idUsuario_seq"'::regclass);
 E   ALTER TABLE public."Usuarios" ALTER COLUMN "idUsuario" DROP DEFAULT;
       public          postgres    false    206    207    207            ?          0    25027 
   Categorias 
   TABLE DATA           ?   COPY public."Categorias" ("idCategoria", "nombreCategoria", "descripcionCategoria", "imagenCategoria", "idEstadoCategoria", "idGenero") FROM stdin;
    public          postgres    false    217    ?       ?          0    25087    Clientes 
   TABLE DATA           ?   COPY public."Clientes" ("idCliente", "nombresCliente", "apellidosCliente", "correoCliente", "claveCliente", "telefonoCliente", "nacimientoCliente", "duiCliente", "direccionCliente", "idEstadoCliente") FROM stdin;
    public          postgres    false    223   ?       ?          0    25133    DetallePedido 
   TABLE DATA           ?   COPY public."DetallePedido" ("idDetallePedido", "cantidadDetallePedido", "precioDetallePedido", "idProducto", "idPedido") FROM stdin;
    public          postgres    false    229   :?       ?          0    25017    EstadoCategoria 
   TABLE DATA           S   COPY public."EstadoCategoria" ("idEstadoCategoria", "estadoCategoria") FROM stdin;
    public          postgres    false    215   W?       ?          0    25077    EstadoCliente 
   TABLE DATA           M   COPY public."EstadoCliente" ("idEstadoCliente", "estadoCliente") FROM stdin;
    public          postgres    false    221   t?       ?          0    25105    EstadoPedido 
   TABLE DATA           J   COPY public."EstadoPedido" ("idEstadoPedido", "estadoPedido") FROM stdin;
    public          postgres    false    225   ??       ?          0    24997    EstadoProducto 
   TABLE DATA           P   COPY public."EstadoProducto" ("idEstadoProducto", "estadoProducto") FROM stdin;
    public          postgres    false    211   ??       ?          0    24952    EstadoUsuario 
   TABLE DATA           M   COPY public."EstadoUsuario" ("idEstadoUsuario", "estadoUsuario") FROM stdin;
    public          postgres    false    205   ˫       ?          0    25007    Genero 
   TABLE DATA           >   COPY public."Genero" ("idGenero", "nombreGenero") FROM stdin;
    public          postgres    false    213   ??       ?          0    25115    Pedido 
   TABLE DATA           r   COPY public."Pedido" ("idPedido", "fechaPedido", "fechaEntregaPedido", "idCliente", "idEstadoPedido") FROM stdin;
    public          postgres    false    227   ?       ?          0    25047 	   Productos 
   TABLE DATA           ?   COPY public."Productos" ("idProducto", "nombreProducto", "descripcionProducto", "precioProducto", "imagenProducto", "idEstadoProducto", "idTalla", "idCategoria", "idUsuario") FROM stdin;
    public          postgres    false    219   "?       ?          0    24987    Tallas 
   TABLE DATA           <   COPY public."Tallas" ("idTalla", "nombreTalla") FROM stdin;
    public          postgres    false    209   ??       ?          0    25155 	   TipoTalla 
   TABLE DATA           A   COPY public."TipoTalla" ("idTipoTalla", "tipoTalla") FROM stdin;
    public          postgres    false    231   \?       ?          0    24942    TipoUsuario 
   TABLE DATA           G   COPY public."TipoUsuario" ("idTipoUsuario", "tipoUsuario") FROM stdin;
    public          postgres    false    203   y?       ?          0    24962    Usuarios 
   TABLE DATA           ?   COPY public."Usuarios" ("idUsuario", "nombresUsuario", "apellidosUsuario", "correoUsuario", usuario, "claveUsuario", "idTipoUsuario", "idEstadoUsuario") FROM stdin;
    public          postgres    false    207   ??       ?           0    0    Categorias_idCategoria_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Categorias_idCategoria_seq"', 1, false);
          public          postgres    false    216            ?           0    0    Clientes_idCliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Clientes_idCliente_seq"', 1, false);
          public          postgres    false    222            ?           0    0 !   DetallePedido_idDetallePedido_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."DetallePedido_idDetallePedido_seq"', 1, false);
          public          postgres    false    228            ?           0    0 %   EstadoCategoria_idEstadoCategoria_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."EstadoCategoria_idEstadoCategoria_seq"', 1, false);
          public          postgres    false    214            ?           0    0 !   EstadoCliente_idEstadoCliente_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."EstadoCliente_idEstadoCliente_seq"', 1, false);
          public          postgres    false    220            ?           0    0    EstadoPedido_idEstadoPedido_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."EstadoPedido_idEstadoPedido_seq"', 1, false);
          public          postgres    false    224            ?           0    0 #   EstadoProducto_idEstadoProducto_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."EstadoProducto_idEstadoProducto_seq"', 1, false);
          public          postgres    false    210            ?           0    0 !   EstadoUsuario_idEstadoUsuario_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."EstadoUsuario_idEstadoUsuario_seq"', 1, false);
          public          postgres    false    204            ?           0    0    Genero_idGenero_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Genero_idGenero_seq"', 1, false);
          public          postgres    false    212            ?           0    0    Pedido_idPedido_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Pedido_idPedido_seq"', 1, false);
          public          postgres    false    226            ?           0    0    Productos_idProducto_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Productos_idProducto_seq"', 1, false);
          public          postgres    false    218            ?           0    0    Tallas_idTalla_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Tallas_idTalla_seq"', 1, false);
          public          postgres    false    208            ?           0    0    TipoTalla_idTipoTalla_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."TipoTalla_idTipoTalla_seq"', 1, false);
          public          postgres    false    230            ?           0    0    TipoUsuario_idTipoUsuario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."TipoUsuario_idTipoUsuario_seq"', 1, false);
          public          postgres    false    202            ?           0    0    Usuarios_idUsuario_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Usuarios_idUsuario_seq"', 1, false);
          public          postgres    false    206                       2606    25032    Categorias pkCategoria 
   CONSTRAINT     c   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "pkCategoria" PRIMARY KEY ("idCategoria");
 D   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "pkCategoria";
       public            postgres    false    217                       2606    25095    Clientes pkCliente 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "pkCliente" PRIMARY KEY ("idCliente");
 @   ALTER TABLE ONLY public."Clientes" DROP CONSTRAINT "pkCliente";
       public            postgres    false    223                       2606    25141    DetallePedido pkDetallePedido 
   CONSTRAINT     n   ALTER TABLE ONLY public."DetallePedido"
    ADD CONSTRAINT "pkDetallePedido" PRIMARY KEY ("idDetallePedido");
 K   ALTER TABLE ONLY public."DetallePedido" DROP CONSTRAINT "pkDetallePedido";
       public            postgres    false    229            ?
           2606    25022 !   EstadoCategoria pkEstadoCategoria 
   CONSTRAINT     t   ALTER TABLE ONLY public."EstadoCategoria"
    ADD CONSTRAINT "pkEstadoCategoria" PRIMARY KEY ("idEstadoCategoria");
 O   ALTER TABLE ONLY public."EstadoCategoria" DROP CONSTRAINT "pkEstadoCategoria";
       public            postgres    false    215                       2606    25082    EstadoCliente pkEstadoCliente 
   CONSTRAINT     n   ALTER TABLE ONLY public."EstadoCliente"
    ADD CONSTRAINT "pkEstadoCliente" PRIMARY KEY ("idEstadoCliente");
 K   ALTER TABLE ONLY public."EstadoCliente" DROP CONSTRAINT "pkEstadoCliente";
       public            postgres    false    221                       2606    25110    EstadoPedido pkEstadoPedido 
   CONSTRAINT     k   ALTER TABLE ONLY public."EstadoPedido"
    ADD CONSTRAINT "pkEstadoPedido" PRIMARY KEY ("idEstadoPedido");
 I   ALTER TABLE ONLY public."EstadoPedido" DROP CONSTRAINT "pkEstadoPedido";
       public            postgres    false    225            ?
           2606    25002    EstadoProducto pkEstadoProducto 
   CONSTRAINT     q   ALTER TABLE ONLY public."EstadoProducto"
    ADD CONSTRAINT "pkEstadoProducto" PRIMARY KEY ("idEstadoProducto");
 M   ALTER TABLE ONLY public."EstadoProducto" DROP CONSTRAINT "pkEstadoProducto";
       public            postgres    false    211            ?
           2606    24957    EstadoUsuario pkEstadoUsuario 
   CONSTRAINT     n   ALTER TABLE ONLY public."EstadoUsuario"
    ADD CONSTRAINT "pkEstadoUsuario" PRIMARY KEY ("idEstadoUsuario");
 K   ALTER TABLE ONLY public."EstadoUsuario" DROP CONSTRAINT "pkEstadoUsuario";
       public            postgres    false    205            ?
           2606    25012    Genero pkGenero 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Genero"
    ADD CONSTRAINT "pkGenero" PRIMARY KEY ("idGenero");
 =   ALTER TABLE ONLY public."Genero" DROP CONSTRAINT "pkGenero";
       public            postgres    false    213                       2606    25120    Pedido pkPedido 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT "pkPedido" PRIMARY KEY ("idPedido");
 =   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT "pkPedido";
       public            postgres    false    227                       2606    25052    Productos pkProducto 
   CONSTRAINT     `   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "pkProducto" PRIMARY KEY ("idProducto");
 B   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "pkProducto";
       public            postgres    false    219            ?
           2606    24992    Tallas pkTalla 
   CONSTRAINT     W   ALTER TABLE ONLY public."Tallas"
    ADD CONSTRAINT "pkTalla" PRIMARY KEY ("idTalla");
 <   ALTER TABLE ONLY public."Tallas" DROP CONSTRAINT "pkTalla";
       public            postgres    false    209                       2606    25160    TipoTalla pkTipoTalla 
   CONSTRAINT     b   ALTER TABLE ONLY public."TipoTalla"
    ADD CONSTRAINT "pkTipoTalla" PRIMARY KEY ("idTipoTalla");
 C   ALTER TABLE ONLY public."TipoTalla" DROP CONSTRAINT "pkTipoTalla";
       public            postgres    false    231            ?
           2606    24947    TipoUsuario pkTipoUsuario 
   CONSTRAINT     h   ALTER TABLE ONLY public."TipoUsuario"
    ADD CONSTRAINT "pkTipoUsuario" PRIMARY KEY ("idTipoUsuario");
 G   ALTER TABLE ONLY public."TipoUsuario" DROP CONSTRAINT "pkTipoUsuario";
       public            postgres    false    203            ?
           2606    24970    Usuarios pkUsuario 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "pkUsuario" PRIMARY KEY ("idUsuario");
 @   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "pkUsuario";
       public            postgres    false    207            ?
           2606    25182    Usuarios uniqueCorreo 
   CONSTRAINT     y   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "uniqueCorreo" UNIQUE ("correoUsuario") INCLUDE ("correoUsuario");
 C   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "uniqueCorreo";
       public            postgres    false    207    207                       2606    25217    Clientes uniqueCorreoCliente 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "uniqueCorreoCliente" UNIQUE ("correoCliente") INCLUDE ("correoCliente");
 J   ALTER TABLE ONLY public."Clientes" DROP CONSTRAINT "uniqueCorreoCliente";
       public            postgres    false    223    223                       2606    25024 %   EstadoCategoria uniqueEstadoCategoria 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EstadoCategoria"
    ADD CONSTRAINT "uniqueEstadoCategoria" UNIQUE ("estadoCategoria") INCLUDE ("estadoCategoria");
 S   ALTER TABLE ONLY public."EstadoCategoria" DROP CONSTRAINT "uniqueEstadoCategoria";
       public            postgres    false    215    215                       2606    25084 !   EstadoCliente uniqueEstadoCliente 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EstadoCliente"
    ADD CONSTRAINT "uniqueEstadoCliente" UNIQUE ("estadoCliente") INCLUDE ("estadoCliente");
 O   ALTER TABLE ONLY public."EstadoCliente" DROP CONSTRAINT "uniqueEstadoCliente";
       public            postgres    false    221    221                       2606    25112    EstadoPedido uniqueEstadoPedido 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EstadoPedido"
    ADD CONSTRAINT "uniqueEstadoPedido" UNIQUE ("estadoPedido") INCLUDE ("estadoPedido");
 M   ALTER TABLE ONLY public."EstadoPedido" DROP CONSTRAINT "uniqueEstadoPedido";
       public            postgres    false    225    225            ?
           2606    25004 #   EstadoProducto uniqueEstadoProducto 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EstadoProducto"
    ADD CONSTRAINT "uniqueEstadoProducto" UNIQUE ("estadoProducto") INCLUDE ("estadoProducto");
 Q   ALTER TABLE ONLY public."EstadoProducto" DROP CONSTRAINT "uniqueEstadoProducto";
       public            postgres    false    211    211            ?
           2606    24959 !   EstadoUsuario uniqueEstadoUsuario 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EstadoUsuario"
    ADD CONSTRAINT "uniqueEstadoUsuario" UNIQUE ("estadoUsuario") INCLUDE ("estadoUsuario");
 O   ALTER TABLE ONLY public."EstadoUsuario" DROP CONSTRAINT "uniqueEstadoUsuario";
       public            postgres    false    205    205                       2606    25034     Categorias uniqueNombreCategoria 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "uniqueNombreCategoria" UNIQUE ("nombreCategoria") INCLUDE ("nombreCategoria");
 N   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "uniqueNombreCategoria";
       public            postgres    false    217    217            ?
           2606    25014    Genero uniqueNombreGenero 
   CONSTRAINT     {   ALTER TABLE ONLY public."Genero"
    ADD CONSTRAINT "uniqueNombreGenero" UNIQUE ("nombreGenero") INCLUDE ("nombreGenero");
 G   ALTER TABLE ONLY public."Genero" DROP CONSTRAINT "uniqueNombreGenero";
       public            postgres    false    213    213            	           2606    25054    Productos uniqueNombreProducto 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "uniqueNombreProducto" UNIQUE ("nombreProducto") INCLUDE ("nombreProducto");
 L   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "uniqueNombreProducto";
       public            postgres    false    219    219                       2606    25162    TipoTalla uniqueTipoTalla 
   CONSTRAINT     u   ALTER TABLE ONLY public."TipoTalla"
    ADD CONSTRAINT "uniqueTipoTalla" UNIQUE ("tipoTalla") INCLUDE ("tipoTalla");
 G   ALTER TABLE ONLY public."TipoTalla" DROP CONSTRAINT "uniqueTipoTalla";
       public            postgres    false    231    231            ?
           2606    25255    TipoUsuario uniqueTipoUsuario 
   CONSTRAINT     }   ALTER TABLE ONLY public."TipoUsuario"
    ADD CONSTRAINT "uniqueTipoUsuario" UNIQUE ("tipoUsuario") INCLUDE ("tipoUsuario");
 K   ALTER TABLE ONLY public."TipoUsuario" DROP CONSTRAINT "uniqueTipoUsuario";
       public            postgres    false    203    203            ?
           2606    25190    Usuarios uniqueUsuario 
   CONSTRAINT     j   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "uniqueUsuario" UNIQUE (usuario) INCLUDE (usuario);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "uniqueUsuario";
       public            postgres    false    207    207            $           2606    25065    Productos fkCategoria    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "fkCategoria" FOREIGN KEY ("idCategoria") REFERENCES public."Categorias"("idCategoria");
 C   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "fkCategoria";
       public          postgres    false    2819    219    217            '           2606    25121    Pedido fkCliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT "fkCliente" FOREIGN KEY ("idCliente") REFERENCES public."Clientes"("idCliente");
 >   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT "fkCliente";
       public          postgres    false    223    227    2831                        2606    25035    Categorias fkEstadoCategoria    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "fkEstadoCategoria" FOREIGN KEY ("idEstadoCategoria") REFERENCES public."EstadoCategoria"("idEstadoCategoria");
 J   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "fkEstadoCategoria";
       public          postgres    false    2815    217    215            &           2606    25098    Clientes fkEstadoCliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "fkEstadoCliente" FOREIGN KEY ("idEstadoCliente") REFERENCES public."EstadoCliente"("idEstadoCliente");
 F   ALTER TABLE ONLY public."Clientes" DROP CONSTRAINT "fkEstadoCliente";
       public          postgres    false    223    2827    221            (           2606    25126    Pedido fkEstadoPedido    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Pedido"
    ADD CONSTRAINT "fkEstadoPedido" FOREIGN KEY ("idEstadoPedido") REFERENCES public."EstadoPedido"("idEstadoPedido");
 C   ALTER TABLE ONLY public."Pedido" DROP CONSTRAINT "fkEstadoPedido";
       public          postgres    false    227    225    2835            "           2606    25055    Productos fkEstadoProducto    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "fkEstadoProducto" FOREIGN KEY ("idEstadoProducto") REFERENCES public."EstadoProducto"("idEstadoProducto");
 H   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "fkEstadoProducto";
       public          postgres    false    211    219    2807                       2606    24980    Usuarios fkEstadoUsuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "fkEstadoUsuario" FOREIGN KEY ("idEstadoUsuario") REFERENCES public."EstadoUsuario"("idEstadoUsuario");
 F   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "fkEstadoUsuario";
       public          postgres    false    205    207    2795            !           2606    25040    Categorias fkGenero    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "fkGenero" FOREIGN KEY ("idGenero") REFERENCES public."Genero"("idGenero");
 A   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "fkGenero";
       public          postgres    false    2811    217    213            *           2606    25147    DetallePedido fkPedido    FK CONSTRAINT     ?   ALTER TABLE ONLY public."DetallePedido"
    ADD CONSTRAINT "fkPedido" FOREIGN KEY ("idPedido") REFERENCES public."Pedido"("idPedido");
 D   ALTER TABLE ONLY public."DetallePedido" DROP CONSTRAINT "fkPedido";
       public          postgres    false    227    2839    229            )           2606    25142    DetallePedido fkProducto    FK CONSTRAINT     ?   ALTER TABLE ONLY public."DetallePedido"
    ADD CONSTRAINT "fkProducto" FOREIGN KEY ("idProducto") REFERENCES public."Productos"("idProducto");
 F   ALTER TABLE ONLY public."DetallePedido" DROP CONSTRAINT "fkProducto";
       public          postgres    false    229    219    2823            #           2606    25060    Productos fkTalla    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "fkTalla" FOREIGN KEY ("idTalla") REFERENCES public."Tallas"("idTalla");
 ?   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "fkTalla";
       public          postgres    false    2805    219    209                       2606    24975    Usuarios fkTipoUsuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "fkTipoUsuario" FOREIGN KEY ("idTipoUsuario") REFERENCES public."TipoUsuario"("idTipoUsuario");
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "fkTipoUsuario";
       public          postgres    false    203    207    2791            %           2606    25070    Productos fkUsuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "fkUsuario" FOREIGN KEY ("idUsuario") REFERENCES public."Usuarios"("idUsuario");
 A   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "fkUsuario";
       public          postgres    false    219    2799    207            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     