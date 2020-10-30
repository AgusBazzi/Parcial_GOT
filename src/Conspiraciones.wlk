class Conspiracion {
	
	const victima
	const complotados
	
	// ------ Punto C2 ------ //
	
	method traidores() {
		return complotados.filter { personaje => victima.esAliado(personaje) }
	}
	
	method cantidadTraidores() {
		return self.traidores().size()
	}
	
}
