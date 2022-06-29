Feature: Marcar una actividad como completada

	COMO usuario de la aplicación, QUIERO marcar como hecha una actividad, 
    PARA que se añada al apartado de Realizados y se elimine de mi horario.

Scenario Outline: Se marca una actividad como terminada y se confirma la orden
    
Given que el <usuario> se encuentra en el apartado de horario
When presiona 2 veces sobre una <actividad> 
And <bool_confirma> que desea marcar la <actividad> como hecha 
Then la aplicación borrará la <actividad> del apartado de horario 
And pasará a estar en el apartado de Realizados. 
Example:
	|      usuario      | actividad | bool_confirma |
	| Lizbeth Rodriguez |  Cálculo  |     True      |
	
Scenario Outline: Se marca una actividad como terminada y se deniega la orden

Given que el <usuario> se encuentra en el apartado de horario
When presiona 2 veces sobre una <actividad> 
And <bool_deniega> que desea marcar la <actividad> como hecha
Then la aplicación mantendrá la <actividad> en el apartado de horario 
And no se marcará como realizada. 
Example:
    |      usuario      | actividad | bool_confirma |
	| Lizbeth Rodriguez |  Cálculo  |     False     |