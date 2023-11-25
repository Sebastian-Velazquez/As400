RPG AS400 

ESTRUCTURA
        Conceptos básicos
        Objetos: son todos los fuentes que han sido compilados y que pueden ser ejecutados 
                dentro del AS400, incluyen programas, comandos, archivos y tablas.
        Librería: es un repositorio de Objetos, que contienen nombre, tipo y su dirección.
        archivos de fuentes: son reposotoios dentro de la Librerías que contienen objetos(ya compilados)
                que están listos para ser usados dentro del AS400.
        User Profile: define los permisos que un usuario de iSeries tiene dentro del sistema, esto iincluyen menús
                de acceso al sistema y algunos objetos en particular, siempre al momento de crear un usuario, se 
                asignan estos permisos, usualmente a través de grupos.
        Trabajo: es un trabajo que se ejecuta dentro del sistema de iSeries, esto pueden ser escuchadores, ejecuciones 
                de programas o tareas que nosotros podemos definir.
        Subsitema: sirven para controlar los trabajos, proporcionar información sobre el tiempo, recursos y personas 
                que están ejecutando los diferentes trabajos.

        Lenguaje de Programación
        El Lenguaje de Programación RPG fue desarrollado por IBM originalmente para generar informes comerciales 
        o d negocio. Sus siglas en inglés significa Report Program Generator. La primera versión apareció en 1959.
        Sus principales característcas
                Orientado a la producción de informes.
                Realizar cálculos fácilmente.
                Emplea hojas de diferentes para la descripción de ficheros, entrada de datos, salida de resultados, etc.

        Fuentes y Tips básicos
                Programas: son las piezas de código que se ejecutan en el iSeries y que ejecutan una función específica 
                        con los recursos del sistema. Tipos: RPG, RPGLE, SQLRPGLE.
                        RPG (Report Program Generator): 
                                Descripción: Originalmente, RPG fue diseñado para la generación de informes, pero 
                                        con el tiempo se ha expandido para admitir aplicaciones más complejas.
                                Características:
                                        Utiliza un enfoque basado en columnas para la programación.
                                        Incluye operaciones de cálculo integradas.
                                        Es conocido por su sintaxis única y estructura fija.
                        RPGLE (RPG IV o RPG ILE - Integrated Language Environment):
                                Descripción: RPGLE es una evolución del RPG original y es parte del entorno de desarrollo 
                                        ILE de IBM. ILE (Integrated Language Environment) es un conjunto de características que permiten 
                                        la integración de múltiples lenguajes y tecnologías en una aplicación.
                                Características:
                                        Introduce conceptos de modularidad, como procedimientos y módulos.
                                        Permite la integración con otros lenguajes de programación dentro del    mismo programa o aplicación.
                                        Ofrece mejoras en la legibilidad del código y en la mantenibilidad.
                        SQLRPGLE (RPG con SQL incorporado):
                                Descripción: SQLRPGLE combina las características de RPGLE con SQL (Structured Query Language), 
                                        un lenguaje de base de datos estándar utilizado para consultar y manipular datos en bases de datos 
                                        relacionales.
                                Características:
                                        Permite acceder y manipular datos en bases de datos relacionales mediante instrucciones SQL dentro 
                                        del código RPGLE.
                                        Facilita la integración de aplicaciones con bases de datos relacionales, permitiendo operaciones 
                                        como selección, inserción, actualización y eliminación de datos de manera más eficiente.
                DDS: Son los archivos del AS400, estos almacenan información y son similares a las tablas de Base de datos. Tipos: PF, LF.
                        Archivo Físico (PF):
                                Descripción: Un Archivo Físico (PF) es similar a una tabla en una base de datos relacional. Contiene datos almacenados
                                        de manera estructurada y puede tener uno o más índices para mejorar el rendimiento de las consultas.
                                Características:
                                        Almacena registros de datos.
                                        Puede tener campos que contengan datos de diferentes tipos.
                                        Puede tener claves o índices definidos para acelerar la búsqueda y recuperación de datos.
                                        Se define utilizando el lenguaje DDS.
                        Archivo Lógico (LF):
                                Descripción: Un Archivo Lógico (LF) es un tipo de archivo que proporciona una vista lógica o una organización 
                                        diferente de los datos almacenados en un archivo físico. A diferencia de un PF, un LF no almacena datos propios; 
                                        más bien, proporciona una forma alternativa de acceder y organizar los datos del archivo físico.
                        Características:
                                No almacena datos físicos, sino que actúa como una "vista" de los datos almacenados en un PF.
                                Puede incluir o excluir ciertos registros o campos del archivo físico subyacente.
                                Puede tener claves o secuencias de ordenación distintas de las del PF.
                                Proporciona flexibilidad en la organización y presentación de datos según las necesidades de las aplicaciones.
                                Podemos decir que LF es como en SQL un TABLE VIEW, una forma de ver los datos físicos
                CL: Son comandos que se ejecutan en secuencia, y que pueden alterar objetos, programas e incluso recursos del sistema. Tipos: CLP.
                        CLP: Los programas CLP son secuencias de comandos que permiten realizar operaciones diversas en el sistema.
                        Osea, CLP es un programa con comandos de CL para que luego pueda ser ejecutada Ejemplo:
                        /* Programa CLP de Ejemplo */
                        /* Crear una biblioteca */
                                CRTLIB LIB(MI_BIBLIOTECA) TEXT('Mi Biblioteca de Ejemplo')
                        /* Crear un archivo físico */
                                CRTPF FILE(MI_BIBLIOTECA/MI_ARCHIVO) SRCFILE(MI_BIBLIOTECA/QCLSRC)
                        /* Insertar datos en el archivo */
                                CPYF FROMFILE(QSYS/QAEZDEMO) TOFILE(MI_BIBLIOTECA/MI_ARCHIVO) MBROPT(*REPLACE)
                        /* Crear un archivo lógico */
                                CRTLF FILE(MI_BIBLIOTECA/MI_ARCHIVO_LOGICO) SRCFILE(MI_BIBLIOTECA/QCLSRC)
                        /* Definir el formato del archivo lógico */
                                A          R FORMATO_LOGICO
                                A            CAMPO1       10A
                                A            CAMPO2       5P 2
                        /* Seleccionar registros en el archivo lógico */
                                SELECT FROMFILE(MI_BIBLIOTECA/MI_ARCHIVO) TOFILE(MI_BIBLIOTECA/MI_ARCHIVO_LOGICO)
                                WHERE((CAMPO1 EQ 'VALOR1') AND (CAMPO2 GT 10.00))
                        /* Enviar mensaje a la consola */
                                SNDMSG MSG('Programa CLP de ejemplo ejecutado correctamente') TOUSR(QSYSOPR)

ALMACENAMIENTO
        Archivos físicos y lógicos
                Un archivo físico lleva a cabo los datos reales, tienen un número fijo de campos. Cada campos
                puede tener longitud variable. Un archivo físico tiene dos porciones. La primera parte contiene 
                las cualidades del archivo y las descripciones del campo. Las cualidades del archivo incluyen el
                nombre del archivo, dueño, el tamaño, el número de expedientes en el archivo, los campos dominantes, 
                y las cualidades. Las descripciones del campo llevan a cabo las cualidades para cada campo en el 
                expediente. La segunda parte de un archivo físico contiene los datos.
                Un archivo físico no puede ser borrado si esta en un archivo lógico.
                Se usa el comando CRTPF para su creación
                
                El Archivo Lógico, esta siempre relacionado a un archivo físico, este presenta opciones como la 
                utilización de condiciones sobre los campos del archivo físico e inclusive de ordenamiento, seleccón 
                u omisión de registros de acuerdo a nuestras necesidades. Dentro de las herramientas de SQL puede 
                consultarse y realizar operaciones como si fuera un archivo físico. 
                Un archivo logico no puede existir sin un archivo físico. Es como un VIEW en SQL.
                Puede ser borrado individualmente.
                Se usa el comando CRTLF para su creación

        Motor de Base de Datos DB2/400
                DB2 400, es el RDBMS integrado para las plataformas de iSeries, debido a que está integrado al sistema
                Operativo entrega un rendimiento superior y más eficiente que otros motores de base de datos, es una de 
                las plataformas más antiguas del mercado.

                El DB2/400 utiliza las herramientas de la inteligencia de negocio para analizar los datos en el almacen 
                de los datos. Esto incluyen: Herramientas de la ayuda de decisión (DSS), sistemas de información 
                ejecutivos(EIS), y herramientas que minan de los datos

                Se crea a partir de comandos SQL, existen relaciones entre tablas(llaves foráneas)
                ATENCIÓN: O usas Archivos físicos o la DB2.

Conexión a un iSeries 
        Se realiza a través de emuladores. Dentro de los principales emuladores de AS400, podemos encontrar:
                IBM Client Access
                Mocha (contiene versión móvil)
                Free 5250 Emulator (open source)
                TN520J (escrito en Java)


Control Language (CL)
        El control Language (CL) se utiliza principalmente para la administración del sistema y la automatización 
                de tareas en el entorno IBM iSeries. Ejemplo de comandos CL:
                        Crear una Biblioteca:
                                CRTLIB LIB(MI_BIBLIOTECA) TEXT('Mi Biblioteca de Ejemplo')
                        Copiar un Archivo a otro: 
                                CPYF FROMFILE(MI_BIBLIOTECA/ARCHIVO_ORIGEN) TOFILE(MI_BIBLIOTECA/ARCHIVO_DESTINO) MBROPT(*REPLACE)
                        Ejecutar un Programa RPG:
                                CALL PGM(MI_BIBLIOTECA/MIPROGRAMA) PARM('PARÁMETRO1' 'PARÁMETRO2')
                        Enviar un Mensaje a la Consola:
                                SNDPGMMSG MSG('Este es un mensaje de ejemplo') TOUSR(QSYSOPR)
                        Crear una Cola de Impresión:
                                CRTPRTQ OUTQ(MI_BIBLIOTECA/MICOLA) RMTLOCNAME('NombreDeImpresora') AUT(*LIBCRTAUT)
                        Eliminar un Objeto:    
                                DLTOBJ OBJ(MI_BIBLIOTECA/ARCHIVO_VIEJO) OBJTYPE(*FILE)
                                