# README

Vidcon

Instrucciones

Vidcon es una aplicacion hecha en ruby on rails 5. con:

* Servidor de aplicaciones Puma

* Autenticación bcrypt : que exige que el usuario confirme el password

* bootstrap-generators : para agilizar la configuracion de los estilos

* carrierwave : para gestionar la carga de archivos

* streamio-ffmpeg : para convertir videos a formato mp4

*  whenever : para gestionar el crontab y el scheduler

*  jw-player : para embeber videos en las plantillas



  Antes de correr la aplicacion:

1. bundle install

Algunas gemas deben instalarse en el sistema pero depende de al instalacion que tenga de rails .
Si se tiene conflicto con alguna gema del punto anterior se debe ir a la linea de comandos y entrar la siguiente 
instruccion :

gem install <nombre de la gema>

2. Flujo de datos

En Vidcon v0.2.0 , se debe seguir el flujo de acciones disponibles en la página actual. 
Utilizar el explorador para adelantar o ir a  la pagina anterior puede generar errores ya que
algunas paginas utilizan ID,s que no se guardan en la sesion.

3. Tarea en batch

La conversion de videos de otros formatos a mp4 se hace en una operación batch, cada 4 minutos se activa una funcion 
(Administrador.get_processing_videos) que recorre los registros de videos cargados para verificar si esta pendiente por convertir a formato mp4. Si se hace algun 
cambio en esta función se debe actualizar el crontab. En la linea de comandos digite:

whenever  --update-crontab

La función (Administrador.get_processing_videos) se encuentra referenciada en el archivo scheduler.rb. cuando se haga un cambio y 
encuentre errores puede consultar los archivos error.log y con.log o incluir la función en un controlador para chequear la respuesta en 
la consola del servidor











