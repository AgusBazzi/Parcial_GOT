class Conspiracion {
	
	const victima
	const complotados
	var ejecutada = false
	
	// ------ Punto C2 ------ //
	
	method traidores() {
		return complotados.filter { personaje => victima.esAliado(personaje) }
	}
	
	method cantidadTraidores() {
		return self.traidores().size()
	}
	
	// ------ Punto C3 ------ //
	
	method serEjecutada() {
		complotados.forEach { personaje => personaje.actuarContra(victima) }
		ejecutada = true
	}
	
	// ------ Punto C4 ------ //
	
	method cumpliMiObjetivo() {
		return ejecutada &&  !victima.soyPeligroso()
	}
	
}
