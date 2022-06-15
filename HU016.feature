Feature: Añadir horario de clases

	COMO usuario, QUIERO añadir mi horario de clases universitarias PARA que el sistema 
	lo tenga en cuenta y no establezca actividades durante las sesiones académicas.

Scenario Outline: El usuario ingresa correctamente su horario sin ningún cruce
    
Given que el usuario <usuario> se encuentra en la sección de Generar/Modificar horario
When presione la opción Agregar Horario
Then la aplicación mostrará una ventana flotante <ventana_flotante> donde añadirá el horario de clases <horario_clases>
And se le mostrará su horario final <horario_final>
Example:
	|      usuario      |     ventana_flotante    |           horario_clases           |     horario_final       |
	| Lizbeth Rodriguez | Nuevo Horario de Clases | martes, 10:00 - 11:00, AM, Cálculo |    horario completo     |

Scenario Outline: El usuario ingresa su horario, pero presenta un cruce

Given que el usuario <usuario> se encuentra en la sección de Generar/Modificar horario.
When presione la opción Agregar Horario
Then la aplicación mostrará una ventana flotante <ventana_flotante> donde añadirá el horario de clases <horario_clases>, el cual presenta 
un cruce <bool_cruce> con su horario actual
And se le informará que el nuevo horario no está disponible para esa hora mediante un mensaje <mensaje>
Example:
	|      usuario      |     ventana_flotante    |           horario_clases           | bool_cruce  |                 mensaje                    |
	| Lizbeth Rodriguez | Nuevo Horario de Clases | martes, 10:00 - 11:00, AM, Cálculo |    True     | No es posible agregar la clase debido a un |
																									 | cruce con una actividad                    |