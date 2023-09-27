
class VagonDePasajero {
	const property tieneBanio = true
	const property largo
	const property ancho
	var property estaOrdenado = true
	
	method cantPasajeros() {
		const pasajeros = if(ancho<=3){8*largo}else{10*largo}
		return if(not estaOrdenado){0.max(pasajeros - 15)}else{pasajeros}	
	}
	
	method pesoMaximo() = 2000 + (80*self.cantPasajeros()) + self.cargaMaxima()
	
	method cargaMaxima() = if (tieneBanio) {300} else {800}
	
	method esPopular() = self.cantPasajeros() > 50
	
	method hacerMantenimiento() {
		estaOrdenado = true
	}
}

class VagonDeCarga {
	const property cargaMaximaIdeal
	var property maderasSueltas

	method cantPasajeros() = 0
	
	method pesoMaximo() = 1500 + self.cargaMaxima()
	
	method cargaMaxima() = cargaMaximaIdeal - (400*maderasSueltas)
	
	method esPopular() = self.cantPasajeros() > 50
	
	method hacerMantenimiento() {
		maderasSueltas = 0.max(maderasSueltas-2)
	}
}

class VagonDormitorio {
	const property tieneBanio = true
	const property cantCompartimientos
	var property camasPorCompartimientos

	
	method cantPasajeros() = cantCompartimientos*camasPorCompartimientos
	
	method pesoMaximo() = 4000+80*self.cantPasajeros() + self.cargaMaxima()
	
	method cargaMaxima() = 1200
	
	method esPopular() = self.cantPasajeros() > 50 
	
	method hacerMantenimiento() {}
}
