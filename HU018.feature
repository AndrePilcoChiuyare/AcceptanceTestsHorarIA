Feature: Activar o desactivar funciones del teléfono durante el estudio

	COMO usuario, QUIERO que HorarIA desactive el resto de funciones del teléfono 
    durante el estudio PARA evitar distracciones.

Scenario Outline: El usuario desactiva las funciones del teléfono activando la opción
    
Given que el <usuario> se encuentra en la sección de Apartado de Estudio
When presione la opción Bloquear Funciones
Then la aplicación mostrará una <ventana_flotante> donde se muestra Funciones Bloqueadas
And evitará distractores. 
Example:
    |      usuario      |    ventana_flotante   |
	| Lizbeth Rodriguez |  Funciones Bloqueadas |
	
Scenario Outline: El usuario activa las funciones del teléfono desactivando la opción

Given que el <usuario> se encuentra en la sección de Apartado de Estudio
When presione la opción Desbloquear Funciones
Then la aplicación mostrará una <ventana_flotante> donde se muestra Funciones Desbloqueadas
And podrá utilizar las funciones de su teléfono.
Example:
    |      usuario      |     ventana_flotante     |
	| Lizbeth Rodriguez |  Funciones Desbloqueadas |