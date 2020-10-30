import Casas.*
import Animales.*
import Conspiraciones.*
import Personalidades.*

class Personaje {
	
	// ------ Atributos ------ //
	
	var casa
	const conyugues = #{}
	const amigos = #{}
	var estoyVivo
	var conspiracion
	var personalidad
	
	// ------ Punto A1 ------ //
	
	method casa() {
		return casa
	}
	
	method estoyCholito() {
		return conyugues.isEmpty()
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
		return amigos.isEmpty()
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
	
	// ------ Punto C1 ------ //
	
	method crearConspiracionContra(unaVictima, unosComplotados) {
		if (unaVictima.soyPeligroso()) {
			conspiracion = new Conspiracion (victima = unaVictima, complotados = unosComplotados)
		}
		else {
			throw new Exception ( message = "La conspiracion no se puede realizar dado que el objetivo no es peligroso" )
		}
	}
	
	// ------ Punto C2 ------ //
	
	method esAliado(unPersonaje) {
		return self.aliados().contains(unPersonaje)
	}
	
	// ------ Punto C3 ------ //
	
	method ejecutarConspiacion() {
		conspiracion.serEjecutada()
	}
	
	method actuarContra(unaVictima) {
		personalidad.actuarContra(unaVictima)
	}
	
	method estoyVivo() {
		return estoyVivo
	}
	
	method morir() {
		estoyVivo = false
	}

}