
object olivia {
	var gradoDeConcentracion = 6
	
	// ACCION / ORDEN -> Tienen efecto / cambian cosas. (No devuelvan nada).
	method recibirMasajes() {
		gradoDeConcentracion = gradoDeConcentracion + 3
	}	
	method discute() {
		gradoDeConcentracion = gradoDeConcentracion - 1
	}
	method darseUnBanioDeVapor() {
		// Este método no tiene efecto.
		// Es necesario para que olivia se pueda antender en el spa
	}
	
	// CONSULTA / PREGUNTA -> Devuelve algo. (No tengan efecto / no cambien cosas).
	method gradoDeConcentracion() {
		return gradoDeConcentracion
	}
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	// Estado
	var nivelDeContractura = 0
	var grasaEnLaPiel = true
	
	method recibirMasajes() { 
		if (nivelDeContractura > 2) {			
			nivelDeContractura = nivelDeContractura - 2
		} else {
			nivelDeContractura = 0
		}
	}
	
	method darseUnBanioDeVapor() {
		grasaEnLaPiel = false
	}
	
	method comerseUnBigMac() {
		grasaEnLaPiel = true
	}
	
	method bajarALaFosa() { 
		grasaEnLaPiel = true
		self.aumentarContractura(1)
	}
	
	method jugarAlPaddle() {
		self.aumentarContractura(3)
	}
	
	// Dividir en subtareas
	method aumentarContractura(cantidad) {
		nivelDeContractura = nivelDeContractura + cantidad
	}
		
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}






