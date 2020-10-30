class Personaje {
	
	var casa
	const conyugues = #{}
	
	
	// ------ Punto A1 ------ //
	
	method casa() {
		return casa
	}
	
	method estoyCholito() {
		return conyugues.size() == 0
	}
	
	// ------ Punto A2 ------ //
	
	method puedoCasarmeCon(otraPersona) {
		return self.miCasaAdmiteCasamientoCon(otraPersona) && otraPersona.miCasaAdmiteCasamientoCon(self)
	}
	
	method miCasaAdmiteCasamientoCon(otraPersona) {
		return casa.admitoCasamientoEntre(self, otraPersona)
	}
}