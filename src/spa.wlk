import personas.*

object spa {
	var ultimaPersonaQueSeAtendio = null    // null es un objeto distinto a todos los otros
	
	// olivia no se puede atender porque no entiende el mensaje darseUnBanioDeVapor
	method atender(persona) {
		persona.recibirMasajes()
		if (ultimaPersonaQueSeAtendio == persona) {
			persona.recibirMasajes()
		}
		persona.darseUnBanioDeVapor()
		ultimaPersonaQueSeAtendio = persona
	}
}