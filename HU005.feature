Feature: Generar horario

	COMO usuario QUIERO generar un horario semanal PARA organizar mi tiempo y poder llegar a los logros académicos que deseo.

Scenario Outline: El usuario ingresa los datos necesarios para generar su horario

Given que el usuario <usuario> se encuentra en la sección Generar/Modificar horario
When pulsa sobre el botón Generar
Then aparecerá una interfaz que le permitirá ingresar los datos de cada tarea <datos_tarea>
And una vez que el usuario <usuario> haya terminado de agregar cada una de ellas, tendrá que presionar el botón Listo, el cual mostrará 
el mensaje <mensaje> "Horario creado correctamente" junto con su cronograma de actividades <cronograma_actividades>
Example:
	|      usuario      |                 datos_tarea               |           mensaje            | cronograma_actividades  |
	| Lizbeth Rodriguez | 20/06/2022, ensayo, Las Heladas, Lenguaje | Horario creado correctamente |    horario completo     |

Scenario Outline: El usuario no ingresa los datos necesarios para generar su horario

Dado que el usuario <usuario> se encuentra en la sección Generar/Modificar horario
Cuando pulsa sobre el botón Generar
Entonces aparecerá una interfaz que le permitirá ingresar los datos de cada tarea <datos_tarea>
Y una vez que el usuario <usuario> haya terminado de agregar cada una de ellas, tendrá que presionar el botón Listo, el cual mostrará 
el mensaje <mensaje> "Todavía hay campos que necesitan ser rellenados"
Example:
	|      usuario      |                 datos_tarea               |                    mensaje                      |
	| Lizbeth Rodriguez | 20/06/2022, ensayo, Las Heladas, Lenguaje | Todavía hay campos que necesitan ser rellenados |