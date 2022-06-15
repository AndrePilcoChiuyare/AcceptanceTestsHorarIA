Feature: Añadir horas bloqueadas de descanso

	COMO usuario, QUIERO que la aplicación tome en cuenta los horarios de alimentación y descanso PARA llevar 
	un balance entre la vida universitaria y el tiempo libre.

Scenario Outline: El usuario añade correctamente los horarios de descanso
    
Given que el usuario <usuario> se encuentra en la sección de Generar/Modificar horario
When presione la opción Agregar Horario
Then la aplicación mostrará una ventana flotante <ventana_flotante> donde añadirá varios horarios de descanso <horarios_descanso> en un solo día
And se le mostrará una ventana de emergencia <ventana_emergencia> que le recuerda que no debe ingresar muchos horarios en un solo día, junto con
su horario final <horario_final>
Example:
	|      usuario      |     ventana_flotante    |           horarios_descanso        |          ventana_emergencia               |  horario_final    |
	| Lizbeth Rodriguez | Nuevo Horario de Clases | martes, 10:00 - 11:00, AM, Cálculo | No agregue demasiados descansos en un día | horario completo  |
																					   | para evitar conflictos                    |