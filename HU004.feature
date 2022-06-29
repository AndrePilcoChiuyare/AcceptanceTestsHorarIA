Feature: Modificar el tiempo de descanso y estudio en el cronómetro Pomodoro

	COMO usuario quiero modificar el cronómetro Pomodoro PARA tener mejor control del tiempo en caso de ser necesario.

Scenario Outline: El usuario ingresa un tiempo de estudio en el rango de 30 - 45 minutos y un descanso entre 5 - 15 minutos
    
Given que el <usuario> se encuentra en el Apartado de Estudio 
And en la sección de Cronómetro Pomodoro
When digita la cantidad de <minutos_estudiar> en el recuadro Tiempo de estudio
And la cantidad de <minutos_descansar> en el recuadro Tiempo de descanso
Then establecerá los minutos ingresados a cada apartado de la técnica Pomodoro 
And mostrará el <mensaje> "Tiempo de estudio y descanso actualizados correctamente".
Example:
	|      usuario      | minutos_estudiar | minutos_descansar |                         mensaje                         |
	| Lizbeth Rodriguez |        30        |         5         | Tiempo de estudio y descanso actualizados correctamente |

	
Scenario Outline: El usuario ingresa un tiempo de estudio fuera del rango de 30 a 45 minutos.

Given que el <usuario> se encuentra en el Apartado de Estudio 
And en la sección de Cronómetro Pomodoro
When digita la cantidad de <minutos_estudiar> en el recuadro Tiempo de estudio
And la cantidad de <minutos_descansar> en el recuadro Tiempo de descanso
Then la aplicación mostrará el <mensaje> "El tiempo de estudio debe estar en el rango de 30 a 45 minutos"
Example:
	|      usuario      | minutos_estudiar | minutos_descansar |                            mensaje                             |
	| Lizbeth Rodriguez |        50        |         5         | El tiempo de estudio debe estar en el rango de 30 a 45 minutos |


Scenario Outline: El usuario ingresa un tiempo de descanso fuera del rango de 5 a 15 minutos.

Given que el <usuario> se encuentra en el Apartado de Estudio 
And en la sección de Cronómetro Pomodoro
When digita la cantidad de <minutos_estudiar> en el recuadro Tiempo de estudio
And la cantidad de <minutos_descansar> en el recuadro Tiempo de descanso
Then la aplicación mostrará el <mensaje> "El tiempo de descanso debe estar en el rango de 5 a 15 minutos"
Example:
	|      usuario      | minutos_estudiar | minutos_descansar |                            mensaje                             |
	| Lizbeth Rodriguez |        30        |         20        | El tiempo de descanso debe estar en el rango de 5 a 15 minutos |