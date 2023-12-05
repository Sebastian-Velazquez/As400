as 400.
Ques es el as400?
Para que sirve?
como lo usamos?
que base de datos usamos?
que librerías y como lo usamos?
como interactuamos?

As400 es muy robusto y tiene un nivel de seguriridad muy buena.

As400 es un sistema integrado muy complejo que esta complejo por hardware, software, db.
Se usa actualmente por su sistema operativo cuya principal carateristica es que todo lo que existe en el sistema es un objeto

El As400 usa el modelo relacional para sus db. 
un modelo relacional es una colección de informacion agrupados de tal forma que minimiza la redundancia entre ellos y permite cambios y su crecimiento en el futuro.

Una vez entrado al sistema as 400 se muestra un menu que son comenado en al que uno pude navegar

F3: Para salir al menu

F4: es como el enter. Para accder a los comandos. Desplegar nuevas opciones. Siempre pretar es F4
Sirve para prevenir errorer como borrar algo
SIEMPRE F4 Siempre!!

F9: Recuperar el comando anterior . es para recuparar comandos no para la navegacion
F12: borra

Para acceder a otros mayores que F12:
Shift + F1 = F13
Shift + F2 = F14
Shift + F3 = F15
Shift + F4 = F16
Shift + F5 = F17
Shift + F6 = F18
Shift + F7 = F19
Shift + F8 = F20
Shift + F9 = F21
Shift + F10 = F22
Shift + F11 = F23
Shift + F12 = F24

90 para salir de seccion

Cuando te dice More.. usar estos comando para avanzar.
    Ctrl + Re AV. para ver mas detalle
    Ctrl + Re Pag. para volver
---------------------------------------------------------------------------
Acceso a librerías y archivos
comando:  STRPDM
1.Trabajar con librerías
    Digitas tu librería..  vamos a tener informacion contenida, carpetas archivos
    El comando usado para crear librerías es el CRTLIB, se ingrsa en liena de comando y se presiona la tecla F$.
        Se ingresa el nombre deseado a crear, no debe exstir en la maquina.
    opciones:
        2. Change. cambiar. podes cambiar el tipo de librería. aprestas f4 de nuevo para ver las pciones que se pueden cambiar. Es mas para identifica que 
            tipos hay por si el sistema se vuelve mas grandes
            Tambien cambiar la descripcion
        3. copiar
        4. boorrar
        5. listar
        7. rename.
        8. descripcion de la librería
        12. entramos a la librería
2.Trabajar con Objetos
3.Trabajar con miembros


Objetos: son aquellos que se generan en base a la compilacion de un programa o archivo, a estos programaws o archivos lo vamos a llamr fuentes
Archivo: es un módulo o carpeta de la librería qu va a contener la fuente. Son de tipo FILE y Attibute PF-SRC
dentro de cada archivo esta el codi fuente

Crear Módulos. Los módulos son los que coniene las fuestes
    Atención: este servidor de As400 nos limita la creación de librerías
    1) EDTLIBL
    2) Ingresar abajo donde dice Library: SEBA1993 + boton Intro
        SEBA19931 Nuestra librería.
        Aparece abajo:Library list changed.
        QGPL Del sistema
        QTEMP Del sistema
        GAMES400 Del sistema
    3) Posicionarnos en nuestra librería + Intro

    Otra opción  para entrar a la librerías es usar STRPDM y entramos en la opciones y ponemos 1,ponemos nuestra librería
    y le damos Intro y luego 12 para trabajar con la librería

    4) Para accder a una librería con 12
    5)Crear un Módulo: CRTSRCPF + F4
        LLenamos los datos:
            File.... PRUEBA
            Library.... BOCA19931
            + Intro
    6) F5 para actualizar
    Importante: si no te sabes el comando escribe lo que estas seguro que empieza y al final agrega un * 
    y te muestra todos los comando que empiezan con lo que pusiste
    7)Empezar a crear el archivo STRSEU + F4
    8)llenar datos:
        Souce file.... PRUEBA
        Library.... SEBA19931
        Souce type.... (Poder apretar F4 y ves todas las opciones de fomato para el módulo)
            *SAME                                CLD
            BAS                                  CLP
            BASP                                 CLLE
            BND                                  CMD
            C                                    CPP
            CBL                                  DFU
            CBLLE                                DSPF
            CICSC                                FTN
            CICSCBL                              ICFF
            CICSCBLLE                            LF
            CICSMAP                              MENU
            CICSSQLCBL                           MNU
            CL                                   MNUCMD
    9)Llamar el objeto: NEW MEMBER.... NOMBRE Le pusimos: ARC02
        Luego le damos enter
    10)Ahora estamos en el codigo fuente del archivo
    11)Tecla rapida: CONRL + R. Te da unas lineas para ubicarte donde esta el cursor
        Estamos en el archivo para editar hay que poner varias A debajo de la A y dar enter para que se pueda usar  
        Si al lado de la A ponemos un * esta linena sera de comentario

        Para agregar una linea se pone un I detra de nuemro
        Para eliminar una linea se pone un D detra de nuemro
         Columns . . . :    1  71            Edit                   SEBA19931/MODPRUEBA
 SEU==>                                                                   ARC02
 FMT A* .....A*. 1 ...+... 2 ...+... 3 ...+... 4 ...+... 5 ...+... 6 ...+... 7
        *************** Beginning of data *************************************
0001.00      A*============================================================*
0002.00      A*   ARC02 - INFORMACION BASICA DEL CLIENTE                   *
0003.00      A*============================================================*
0004.00      A
00I5.00      A //esto es para agregar una linea
00D6.00      A //esto es eliminar una linea
0007.00      A
    12) Nombrar el registro para poder hacer acciones dentro del programa
Prompt type . . .   PF      Sequence number . . .  0004.00
Name                                     Data      Decimal
Type       Name        Ref     Length    Type     Positions    Use
 R       ARC02R

    Luego F12 ara cancelar
    13) Nombrar nombres de campos
Prompt type . . .   PF      Sequence number . . .  0005.00
Name                                     Data      Decimal
Type       Name        Ref     Length    Type     Positions    Use
        ARC2NID                  21      A
Functions
TEXT('NUMERO DE ID')

    A: Es de tipo de dato varchar

    Cambiar configuracion. Shift + F1. Poner en C
Amount to roll . . . . . . . . . . .   C            H=Half, F=Full
                                                    C=Cursor, D=Data
    IMPORTANTE: Esto es para usar atajos en la creacion de tion en el documento usando RePág y AvPág
    14) Duplicar un campo creado con RP
00RP.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
    15) Para copiar y pegar con C y pegar A o B
00C6.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
0006.01      A            AC2APE        50A         TEXT('APELLIDO DE CLIENTE')
0006.02      A            AC2EDA         3S         TEXT('EDAD DE CLIENTE')
00A7.00      A
    16) pegar en bloques con CC tanto para el inicio como al final del bloque. Luego usamos A o B
CC05.00      A            ARC2NID       21A         TEXT('NUMERO DE ID')
0006.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
0006.01      A            AC2APE        50A         TEXT('APELLIDO DE CLIENTE')
CC06.02      A            AC2EDA         3S         TEXT('EDAD DE CLIENTE')
0008.00      A
0009.00      A
0010.00      A
0B11.00      A
    17) Para mover con MM y usamos A o b
MM05.00      A            ARC2NID       21A         TEXT('NUMERO DE ID')
0006.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
0006.01      A            AC2APE        50A         TEXT('APELLIDO DE CLIENTE')
MM06.02      A            AC2EDA         3S         TEXT('EDAD DE CLIENTE')
0008.00      A
00A9.00      A
0010.00      A
0011.00      A
    18) Para eliminar bloques con DD tanto para el inicio del bloque como al final
DD05.00      A            ARC2NID       21A         TEXT('NUMERO DE ID')
0006.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
0006.01      A            AC2APE        50A         TEXT('APELLIDO DE CLIENTE')
DD06.02      A            AC2EDA         3S         TEXT('EDAD DE CLIENTE')
    19) Definir las llaves. Clave primaria
Columns . . . :    1  71            Edit                   SEBA19931/MODPRUEBA
 SEU==>                                                                   ARC02
 FMT A* .....A*. 1 ...+... 2 ...+... 3 ...+... 4 ...+... 5 ...+... 6 ...+... 7
        *************** Beginning of data *************************************
0001.00      A*============================================================*
0002.00      A*   ARC02 - INFORMACION BASICA DEL CLIENTE                   *
0003.00      A*============================================================*
0003.01      A                                      UNIQUE //IMPORTANTE
0004.00      A          R ARC02R
0005.00      A            ARC2NID       21A         TEXT('NUMERO DE ID')
0006.00      A            AC2NOM        50A         TEXT('NOMBRES DE CLIENTE')
0006.01      A            AC2APE        50A         TEXT('APELLIDO DE CLIENTE')
0006.02      A            AC2CIU        60A         TEXT('NOMBRE CUIDAD NAC')
0006.03      A            AC2EDA         3S         TEXT('EDAD DE CLIENTE')
0008.00      A          K ARC2NID //LLAVE
        ****************** End of data ****************************************
    20) para ir guardando 
SEU==> SAVE
    21) F3 para salir del documento y ponemos Y para guardar
    22) salimos mas con F3 hasta ver la lista y luego F5 para visualizar
    23) para compilar ponemos 14 + F4
    24) Consular archivo
    RUNQRY + F4
Query  . . . . . . . . . . . . . QRY          >
Library  . . . . . . . . . . .                  *LIB
Query file:                      QRYFILE
File . . . . . . . . . . . . .                  ARC0
    Library  . . . . . . . . . .                  *LIB
Member . . . . . . . . . . . .                *FIRST
                        + for more values
Report output type . . . . . . . OUTTYPE        *RUNOP
Output form  . . . . . . . . . . OUTFORM        *RUNOP
Record selection . . . . . . . . RCDSLT         *NO
--------------------------------------------------------------------------------------
Consultas de archivo físico
    1) Una ves que estemos en el archivo fisico compilado, sugiere usar EDTLIB
Number   Library           Number   Library
    0                        150
    10    SEBA19931           160
    20    QGPL                170
    30    QTEMP               180
    40    GAMES400            190
        Como se, se agrego la librería
    2) Hacer uso de archivo, Consular de forma mas directa
    RUNQRY *N ARCO2 + F4 + ENTER
    3)Ingresar manuelmante registros
        STRDFU + F4
Option:                          OPTION
DFU option . . . . . . . . . .                5
Run option . . . . . . . . . .                *NONE
DFU program  . . . . . . . . . . DFUPGM         *PRV
Library  . . . . . . . . . . .                  *PRV
Data base file . . . . . . . . . FILE           *PRV
Library  . . . . . . . . . . .                  *PRV
Member . . . . . . . . . . . . . MBR            *PRV
    4)Enter y luego lo siguiente:
Data file . . . . . . . . .   ARC02         Name, F4 for list
Library . . . . . . . . .     SEBA19931   Name, *LIBL, *CURLIB
Member  . . . . . . . . . .                 Name, *FIRST, F4 for list
    5) Le damos enter y estamos listo para ingresar datos WORK WITH DATA IN A FILE                       Mode . . . . :   ENTRY
 Format . . . . :   ARC02R                      File . . . . :   ARC02
 ARC2NID:
 AC2NOM:
 AC2APE:
 AC2CIU:
 AC2EDA:
    6) Ahora apretamos F9 para que nos habilite la opción de instertar registro
    7) Ahora entramos el  RUNQRY *N ARCO2 + F4 + ENTER y podemos ver los datos que ingresamos, para ver todos los campos porque
        al princiopio ves dos depediendo de la pantalla. podemos navegar para la derecha o izquierda con Shift+F8 y Shift+F9
MINUTO 11:04
    8) Realizar filtros oo Consultas: RUNQRY *N ARCO2 + F4 + ENTER
Query  . . . . . . . . . . . . . QRY
Library  . . . . . . . . . . .                  *LIBL
Query file:                      QRYFILE
File . . . . . . . . . . . . .              > ARC02
Library  . . . . . . . . . .                  *LIBL
Member . . . . . . . . . . . .                *FIRST
                        + for more values
Report output type . . . . . . . OUTTYPE        *RUNOPT
Output form  . . . . . . . . . . OUTFORM        *RUNOPT
Record selection . . . . . . . . RCDSLT         *YES //esta por defecto en NO
    Llanamos los datos:
Type comparisons, press Enter.  Specify OR to start each new group.
Tests:  EQ, NE, LE, GE, LT, GT, RANGE, LIST, LIKE, IS, ISNOT...
AND/OR  Field             Test   Value (Field, Number, 'Characters', or ...)
        AC2EDA            EQ     30
    9) Consulta con STRSQL:
    Ingresamos STRTSQL y le damos enter. Ahora si podemos usar los comando que conocemos para hacer consultas sql
        SELECT * FROM ARC02
        Como en sql hacer todos las consultas que quieran. el direfencial es <>
    PARA RECUPERAR EL COMANDO F9
------------------------------------------------------------------------------
Comandos Básicos Para Manejo de Archivos Físicos. https://www.youtube.com/watch?v=unroHmTnUTI&t=66s
    CRTDUPOBJ : Para duplicar un objeto
 Type choices, press Enter.
 From object  . . . . . . . . . . OBJ          > ARC02 //NOMBRE DE ARCHIVO QUE QUIERO DUPLICAR
 From library . . . . . . . . . . FROMLIB      > SEBA19931 //NOMBRE DE LA LIBRERIA DONDES ESTA ALOJADO EL ARCHIVO
 Object type  . . . . . . . . . . OBJTYPE      > *FILE  //EL TIPO DE FORMATO QUE TIENE EL ARCHIVO A DUPLICAR
                           + for more values
 To library . . . . . . . . . . . TOLIB        > SEBA19932 //EN QUE LIBRERIA LO GUARDE
 New object . . . . . . . . . . . NEWOBJ       > ARC04 //NOMBRE DEL ARCHIVO NUEVO
 From ASP device  . . . . . . . . ASPDEV         *
 To ASP device  . . . . . . . . . TOASPDEV       *ASPDEV
 Duplicate data . . . . . . . . . DATA           *YES //PONER YES PARA QUE QUE SE DUPLIQUE L A IONFORACIONN QUE LO CONTIENE
 Duplicate constraints  . . . . . CST            *YES
 Duplicate triggers . . . . . . . TRG            *YES
 Duplicate file identifiers . . . FILEID         *NO
 Duplicate access control . . . . ACCCTL         *ALL

    DSPFD: Para sacar informacion tecnica del archivo
Type choices, press Enter.
File . . . . . . . . . . . . . . FILE           ARC04
  Library  . . . . . . . . . . .                  SEBA19932
Type of information  . . . . . . TYPE           *ALL
                          + for more values
Output . . . . . . . . . . . . . OUTPUT         *
File attributes  . . . . . . . . FILEATR        *ALL
                          + for more values

    DSPFFD: Para sacar las características de cada campo
    DSPOBJD:
Object . . . . . . . . . . . . . OBJ          > ARC04
Library  . . . . . . . . . . .              >   SEBA19932
Object type  . . . . . . . . . . OBJTYPE      > *FILE
                    + for more values
Detail . . . . . . . . . . . . . DETAIL         *BASIC
ASP device:                      ASPDEV
Device . . . . . . . . . . . .                *
Search type  . . . . . . . . .
Output . . . . . . . . . . . . . OUTPUT         *
    Elegimos estas opciones:
        Type options, press Enter.
        5=Display full attributes   8=Display service attributes
        En la opcopon 8 te da la informacion de la ruta del archivo
            Source file  . . . . . . . . . . . . :   MODPRUEBA
            Library  . . . . . . . . . . . . . :     SEBA19931
            Member . . . . . . . . . . . . . . . :   ARC02
            Attribute  . . . . . . . . . . . . . :   PF
    CLRPFM: Limpiar la informacion que tiene el archivo. CUIDADO!!}
    CPYF: Copiar informacion de un archivo a otro.
        Apretamos F10 para Desplegar mas informacion
                Type choices, press Enter.
                From file  . . . . . . . . . . . FROMFILE     > ARC02
                Library  . . . . . . . . . . .              >   SEBA19931
                To file  . . . . . . . . . . . . TOFILE       > ARC04
                Library  . . . . . . . . . . .              >   SEBA19932
                From member  . . . . . . . . . . FROMMBR        *FIRST
                To member or label . . . . . . . TOMBR          *FIRST
                Replace or add records . . . . . MBROPT       > *ADD //PARA QUE ME AGREGUE
                Create file  . . . . . . . . . . CRTFILE        *NO
                Print format . . . . . . . . . . OUTFMT         *CHAR
    DLTF: Borrar el archivoo
    WRKOBJ:  Es poara varios formatos de archivos.
        WRKOBJ ARC04
            Type options, press Enter.
            2=Edit authority        3=Copy   4=Delete   5=Display authority   7=Rename
            8=Display description   13=Change description
    CHGPF: Realizar cambios a nivel de compilacion
    DSPPFMREF: Buscar que progamas usan el archivo
    ADDLFM: Agregar unm miembro logico a nuestro archivo. Son pequelñas vistas sobre mi archivo logico
    RMVM: Remueve o limina ese archivo logico
    Parte 6 finalizado 
    -------------------------------------------------------------------------------



            Definiciones:
            CLD (Control Language Definition): Este formato se utiliza para definir un programa en lenguaje de control (CL). CL es un 
                lenguaje de scripting que se utiliza para controlar y coordinar las operaciones del sistema AS/400.
            CLP (Control Language Program): Este formato se utiliza para escribir programas en lenguaje de control (CL). Los programas
                CL son secuencias de comandos que se ejecutan en el sistema AS/400.
            CLLE (Control Language Language Environment): Similar al formato CLP, pero se utiliza para programas CL escritos en el 
                entorno de lenguaje (Language Environment). Proporciona características adicionales en comparación con el formato CLP.
            CMD (Command Definition): Se utiliza para definir comandos personalizados que se pueden ejecutar en el sistema AS/400.
            CPP (C Preprocessor): ste formato se utiliza para escribir programas en C. C es un lenguaje de programación de propósito 
                general y se puede utilizar en el entorno AS/400.
            DFU (Data File Utility): Se utiliza para definir pantallas de utilidad de archivos de datos.
            DSPF (Display File): Este formato se utiliza para definir pantallas que se mostrarán en programas interactivos.
            LF (Logical File): Se utiliza para definir archivos lógicos que proporcionan vistas lógicas de los datos almacenados 
                en archivos físicos.
            MENU (Menu): Se utiliza para definir menús interactivos que se pueden mostrar en aplicaciones.
            MNU (Menu): Formato similar al MENU, utilizado para definir menús en el entorno AS/400.
            MNUCMD (Menu Command): Se utiliza para definir comandos asociados con menús.



Consultas Archivo Físico - RUNQRY WRKQRY STRSQL
1) STRPDM
2) Opción 1
3) Opción 12
