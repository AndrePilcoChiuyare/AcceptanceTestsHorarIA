Feature: Visualizar horario

	COMO usuario, QUIERO ver el horario en todo momento de una forma rápida y sencilla 
    PARA tener un mejor control del tiempo.

Scenario Outline: El usuario visualiza su horario realizado
    
Given que el <usuario> se encuentra en la sección de Apartado de Estudio
When presione la opción Visualizar Horario
Then la aplicación mostrará en una nueva <ventana> el Horario realizado
And podrá visualizar su <horario_clases> y <actividades_semana>
Example:
	|      usuario      | ventana |           horario_clases           | actividades_semana |
	| Lizbeth Rodriguez | Horario | martes, 10:00 - 11:00, AM, Cálculo |       Cálculo      |
	
Scenario Outline: El usuario visualiza un horario no existente

Given que el <usuario> se encuentra en la sección de Apartado de Estudio
When presione la opción Visualizar Horario
Then la aplicación mostrará una <ventana_emergente> que señale que no presenta ningún horario existente
Example:
	|      usuario      |           ventana_emergente           |
	| Lizbeth Rodriguez | No se encontró ningún horario creado. |