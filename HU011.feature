Feature: Compartir horario

	COMO usuario de la aplicación, QUIERO compartir mis actividades diarias y semanales con mis amigos, 
    PARA que puedan saber si dispongo de tiempo.

Scenario Outline: El comparte su horario con sus amigos
    
Given que el <usuario> se encuentre en la sección de Horario. 
When presione la opción Compartir horario
Then la aplicación mostrará la opción de seleccionar la aplicación por la que se compartirá el <horario> mediante un archivo PDF
And permitirá al <usuario> seleccionar a que <contactos> mandarle su horario. 
Example:
    |      usuario      |                horario              | contactos  |
	| Lizbeth Rodriguez |  martes, 10:00 - 11:00, AM, Cálculo | Alessander |