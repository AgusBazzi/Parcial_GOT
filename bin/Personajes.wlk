import Casas.*

class Personaje {
	
	// ------ Atributos ------ //
	
	var casa
	const conyugues = #{}
	const amigos = #{}
	var estoyVivo
	
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
	
	// ------ Punto B2 ------ //
	
	method aliados() {
		return amigos + conyugues + casa.miembros()
	}
	
	// ------ Punto B3 ------ //
	
	method soyPeligroso() {
		return estoyVivo && ( self.somosAliadosRicos()   || 
							  self.todosConyuguesRicos() || 
							  self.tengoAliadoPeligroso() )
	}
	
	method somosAliadosRicos() {
		return self.aliados().sum { aliado => aliado.patrimonio() } > 10000
	}
	
	method todosConyuguesRicos() {
		return conyugues.all { conyugue => conyugue.soyDeCasaRica() }
	}
	
	method soyDeCasaRica() {
		return casa.soyRica()
	}
	
	method tengoAliadoPeligroso() {
		return self.aliados().any { aliado => aliado.soyPeligroso() }
	}

}