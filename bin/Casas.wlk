class Casa {
	
	var patrimonio
	const miembros = #{}
	const ciudad
	
	// ------ Punto A1 ------ //
	
	method admitoCasamientoEntre(unMiembro, otraPersona)
	
	// ------ Punto A4 ------ //
	
	method esRica() {
		return patrimonio > 1000
	}
	
	// ------ Punto A5 ------ //
	
	method patrimonioIndividual() {
		return patrimonio / self.cantidadMiembros()
	}
	
	method cantidadMiembros() {
		return miembros.size()
	}
}

object casaLannister inherits Casa {
	
	// ------ Punto A1 ------ //
	
	override method admitoCasamientoEntre(unMiembro, otraPersona) {
		return unMiembro.estoyCholito()
	}
	
}


object casaStark inherits Casa {
	
	// ------ Punto A1 ------ //
	
	override method admitoCasamientoEntre(unMiembro, otraPersona) {
		return otraPersona.casa() != self
	}
	
}


object casaGuardiaDeLaNoche inherits Casa {
	
	// ------ Punto A1 ------ //
	
	override method admitoCasamientoEntre(unMiembo, otraPersona) {
		return false
	}
}