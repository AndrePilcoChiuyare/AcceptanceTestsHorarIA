Feature: Añadir nuevas tareas

	COMO usuario de la aplicación, QUIERO añadir actividades adicionales a mi horario, PARA mantener actualizado el cronograma.

Scenario Outline: El usuario añade correctamente una nueva tarea al horario
    
Given que el usuario <usuario> se encuentra en la sección Generar/Modificar horario
When pulsa sobre el botón Añadir nueva tarea
Then aparecerá una interfaz que le permitirá ingresar los datos de la nueva actividad <datos_tarea>
And una vez que el usuario <usuario> haya terminado de agregarla, tendrá que presionar el botón Listo, el cual mostrará 
el mensaje <mensaje> "Tarea agregada correctamente" junto con su cronograma de actividades <cronograma_actividades>
Example:
	|      usuario      |                 datos_tarea               |           mensaje            | cronograma_actividades  |
	| Lizbeth Rodriguez | 20/06/2022, ensayo, Las Heladas, Lenguaje | Tarea agregada correctamente |    horario completo     |

Scenario Outline: El usuario no es capaz de añadir una nueva tarea por falta de tiempo para su realización

Given que el usuario <usuario> se encuentra en la sección Generar/Modificar horario
When pulsa sobre el botón Añadir nueva tarea
Then aparecerá una interfaz que le permitirá ingresar los datos de la nueva actividad <datos_tarea>
And una vez que el usuario haya terminado de agregarla, tendrá que presionar el botón Listo, el cual mostrará 
el mensaje <mensaje> "Hay muchas actividades por hacer y no hay tiempo suficiente, procure terminar las tareas ya existentes"
Example:
	|      usuario      |                 datos_tarea               |                                mensaje                               |
	| Lizbeth Rodriguez | 20/06/2022, ensayo, Las Heladas, Lenguaje | Hay muchas actividades por hacer y no hay tiempo suficiente, procure |
																	| terminar las tareas ya existentes                                    |