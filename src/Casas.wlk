object casaLannister {
	
	method admitoCasamientoEntre(unMiembro, otraPersona) {
		return unMiembro.estoyCholito()
	}
	
}


object casaStark {
	
	method admitoCasamientoEntre(unMiembro, otraPersona) {
		return otraPersona.casa() != self
	}
	
}


object casaGuardiaDeLaNoche {
	
	method admitoCasamientoEntre(unMiembo, otraPersona) {
		return false
	}
}