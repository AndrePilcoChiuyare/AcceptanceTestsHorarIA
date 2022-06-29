Feature: Activar o desactivar notificaciones de inicio y final

	COMO usuario de la aplicación, QUIERO decidir sobre qué actividades tienen recordatorios de inicio y final, 
    PARA evitar que suenen notificaciones sobre tareas que ya sé cuándo hay que hacerlas.

Scenario Outline: Las notificaciones de inicio y final se encuentran desactivadas
    
Given que el <usuario> se encuentra en el Apartado de Estudio
And visualizando su <horario>
When presiona 3 veces una actividad
Then la aplicación mostrará una <confirmacion>
And activará las <bool_notificaciones> de inicio y final de dicha actividad
Example:
	|      usuario      |              horario               |                     confirmacion                     | bool_notificaciones  |
	| Lizbeth Rodriguez | martes, 10:00 - 11:00, AM, Cálculo | Se han activado las notificaciones de inicio y final |         True         |
	
Scenario Outline: Las notificaciones de inicio y final se encuentran activadas

Given que el <usuario> se encuentra en el Apartado de Estudio
And visualizando su <horario>
When presiona 3 veces una actividad
Then la aplicación mostrará una <confirmacion>
And desactivará las <bool_notificaciones> de inicio y final de dicha actividad
Example:
	|      usuario      |              horario               |                     confirmacion                        | bool_notificaciones  |
	| Lizbeth Rodriguez | martes, 10:00 - 11:00, AM, Cálculo | Se han desactivado las notificaciones de inicio y final |         False        |