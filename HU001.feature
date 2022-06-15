Feature: Asignar un color a cada actividad

	COMO usuario de la aplicación, QUIERO asignar un color distintivo a cada una de las actividades de mi horario
	PARA que sea más fácil guiarme y diferenciar las tareas por hacer.

Scenario Outline: El usuario asigna un color a una actividad ya establecida
    
Given que el usuario <usuario> se encuentra en la sección de Generar/Modificar horario
And mantenga presionado sobre una actividad <actividad> de su cronograma
When presione la opción Asignar color
Then la aplicación mostrará los colores disponibles <colores_disponibles> en una ventana flotante <ventana_flotante>
And permitirá que el usuario <usuario> escoja un color <color>
Example:
	|      usuario      | actividad  |           colores_disponibles             | ventana_flotante  | color |
	| Lizbeth Rodriguez | Matemática | rojo, verde, azul, celeste, violeta, etc. | Paleta de Colores | Azul  |
	
Scenario Outline: El usuario asigna un color a una nueva actividad

Given que el usuario <usuario> se encuentra en la sección de Generar/Modificar horario 
And esté agregando una nueva actividad <nueva_actividad>
When presione la opción Asignar color
Then la aplicación mostrará los colores disponibles <colores_disponibles> en una ventana flotante <ventana_flotante>
And permitirá que el usuario <usuario> escoja un color <color>
Example:
	|      usuario      | nueva_actividad  |           colores_disponibles             | ventana_flotante  | color |
	| Lizbeth Rodriguez |     Cálculo      | rojo, verde, azul, celeste, violeta, etc. | Paleta de Colores | Azul  |