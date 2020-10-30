import Personajes.*

class Casa {
	
	var patrimonio
	const miembros = #{}
	
	// ------ Punto A1 ------ //
	
	method admitoCasamientoEntre(unMiembro, otraPersona)
	
	// ------ Punto A4 ------ //
	
	method soyRica() {
		return patrimonio > 1000
	}
	
	// ------ Punto A5 ------ //
	
	method patrimonioIndividual() {
		return patrimonio / self.cantidadMiembros()
	}
	
	method cantidadMiembros() {
		return miembros.size()
	}
	
	// ------ Punto B2 ------ //
	
	method miembros() {
		return miembros
	}
	
	// ------ Punto C3 ------ //
	
	method patrimonio() {
		return patrimonio
	}
	
	method algunMiembroVivoSoltero() {
		return miembros.filter { miembro => miembro.estoyVivo() && miembro.estoyCholito() }.anyOne()
	}
	
	method perderPorcentajePatrimonio(unPorcentaje) {
		patrimonio = patrimonio - patrimonio*(unPorcentaje/100)
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