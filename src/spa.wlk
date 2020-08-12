import personas.*

object spa {
	var ultimaPersonaAtendida
	
	method atender(persona) {
		// POLIMORFISMO entre las personas (el método funciona con cualquiera de las 3).
		// No me interesa quién es la persona, pero debe entender estos 2 mensajes:
		if (persona == ultimaPersonaAtendida) {
			persona.recibirMasajes()
		}
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
		
		ultimaPersonaAtendida = persona
	}
}