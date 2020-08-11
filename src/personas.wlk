
object olivia {
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
		// y que mas?
	}
}

object ramiro {
	method recibirMasajes() { /*... completar ...*/ }
	method darseUnBanioDeVapor() { /*... completar ...*/ }
	method comerseUnBigMac() { /*... completar ...*/ }
	method bajarALaFosa() { /*... completar ...*/ }
	method jugarAlPaddle() { /*... completar ...*/ }
	
	method diaDeTrabajo() { 
		/*... completar ...*/
	}
}






