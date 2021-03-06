import Casas.*

object sutil {
	
	method actuarContra(unaVictima) {
		const conyugueElegido = self.casaMasPobre().algunMiembroVivoSoltero()
		conyugueElegido.casarmeCon(unaVictima)
		
	}
	
	method casaMasPobre() {
		const casas = [casaLannister, casaStark, casaGuardiaDeLaNoche]
		return casas.min { casa => casa.patrimonio() }
	}
}

object asesino {
	
	method actuarContra(unaVictima) {
		unaVictima.morir()
	}
	
}

object asesinoPrecavido {
	
	method actuarContra(unaVictima) {
		if (unaVictima.estoySuperCholito()) {
			asesino.actuarContra(unaVictima) 
		}
	}
	
}

object disipado {
	
	var property porcentajeADerrochar = 20
	
	method actuarContra(unaVictima) {
		unaVictima.derrocharPorcentajePatrimonio(porcentajeADerrochar)
	}
	
}

object miedoso {
	
	method actuarContra(unaVictima) {
		// nada
	}
	
}