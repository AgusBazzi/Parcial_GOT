class Personaje {
	
	// ------ Atributos ------ //
	
	var casa
	const conyugues = #{}
	const amigos = #{}
	
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
	
	// ------ Punto A3 ------ //
	
	method casarmeCon(otraPersona) {
		if (self.puedoCasarmeCon(otraPersona)) {
			self.agregarConyugue(otraPersona)
			otraPersona.agregarConyugue(self)
		}
		else {
			throw new Exception ( message = "No se puede concretar el casamiento" )
		}
	}
	
	method agregarConyugue(otraPersona) {
		conyugues.add(otraPersona)
	}
	
	// ------ Punto A5 ------ //
	
	method patrimonio() {
		return casa.patrimonioIndividual()
	}
	
	// ------ Punto B1 ------ //
	
	method estoySuperCholito() {
		return amigos.size() == 0
	}
}