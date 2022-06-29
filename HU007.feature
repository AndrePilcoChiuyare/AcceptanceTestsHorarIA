Feature: Acceder a consejos brindados por la aplicación

	COMO usuario de la aplicación, QUIERO compartir mis actividades diarias y semanales con mis amigos, 
    PARA que puedan saber si dispongo de tiempo.

Scenario Outline: El usuario accede al apartado de consejos.
    
Given que el <usuario> se encuentra en el Apartado de Estudio 
And en la sección Consejos
When seleccione Más consejos
Then la aplicación mostrará todos los <tips>, <consejos> y <recomendaciones> para organizar un horario. 
Example:
	|      usuario      |               tips               |             consejos               |          recomendaciones         |
	| Lizbeth Rodriguez | Detalla tu tarea correctamente y | No omitas actividades del horario. | Probar distintas configuraciones |
                        |    la IA será muy precisa al     |                                    |    del cronómetro Pomodoro te    |
                        |       generar tu horario.        |                                    |  permitirá encontrar la perfecta |
                                                                                                |              para ti.            |