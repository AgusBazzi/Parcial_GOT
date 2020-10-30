object casaLannister {
	
	// ------ Punto A1 ------ //
	
	method admitoCasamientoEntre(unMiembro, otraPersona) {
		return unMiembro.estoyCholito()
	}
	
}


object casaStark {
	
	// ------ Punto A1 ------ //
	
	method admitoCasamientoEntre(unMiembro, otraPersona) {
		return otraPersona.casa() != self
	}
	
}


object casaGuardiaDeLaNoche {
	
	// ------ Punto A1 ------ //
	
	method admitoCasamientoEntre(unMiembo, otraPersona) {
		return false
	}
}