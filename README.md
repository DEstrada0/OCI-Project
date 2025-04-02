# OCI-Project
Este proyecto es una aplicación web diseñada para mejorar la productividad de los equipos en Oracle, permitiendo la gestión de tareas, sprints y equipos de trabajo. La aplicación proporciona una interfaz intuitiva para que los usuarios gestionen sus pendientes y permite a los administradores asignar tareas y organizar el trabajo de sus equipos.

Para uso de cron job y tenga actualizado automatico el repo cada 30 min corra el comando
```
install_cron.sh
```
```
git_pull.sh 
```
si no funciona el cron job se tendra que realizar manualmente el ingreso en cron job el commando dentro de bash
```
crontab -e
```
Y dentro de Cron job se introduce este commando con el path de donde se encuentra el repo y el file "git_pull.sh"
```
*/30 * * * * /full/path/to/git_pull.sh
```