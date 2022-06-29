Feature: Visualizar estadísticas sobre el progreso del usuario

	COMO usuario QUIERO que la app muestre estadísticas sobre las tareas cumplidas 
    hasta la fecha PARA observar mi avance.

Scenario Outline: El usuario ha cumplido con alguna tarea hasta la fecha
    
Given que el <usuario> se encuentra en el Apartado de Estudio
When presione sobre la vista previa de Mi avance
Then la aplicación mostrará <graficos_estadisticos> sobre los <cursos_realizados> y las <actividades_por_hacer>
Example:
	|      usuario      | graficos_estadisticos |     cursos_realizados     |   actividades_por_hacer    |
	| Lizbeth Rodriguez |   gráfico circular    | Cálculo, Lenguaje, Física | Programación, Data Science |
	
Scenario Outline: El usuario no ha cumplido con ninguna tarea hasta la fecha

Given que el <usuario> se encuentra en el Apartado de Estudio
When presione sobre la vista previa de Mi avance
Then la aplicación mostrará <graficos_estadisticos> sobre las <actividades_por_hacer> 
And mostrará el <mensaje> 
"¡Sigue esforzándote para completar tu gráfico de avance!"
Example:
	|      usuario      | graficos_estadisticos |   actividades_por_hacer    |                         mensaje                          |
	| Lizbeth Rodriguez |   gráfico circular    | Programación, Data Science | ¡Sigue esforzándote para completar tu gráfico de avance! |