import vagones.*

class Formacion {
	
	const vagones = []
	
	method cantPasajerosQuePuedeLLevar() = vagones.sum({v => v.cantPasajeros()}) 
	
	method cantVagonesPopulares() = vagones.count({v => v.esPopular()})
	
	method esFormacionCarguera() = vagones.all({v => v.cargaMaxima() >= 1000})
	
	method dispersionDePesos() {
		const maximo = vagones.max({v => v.pesoMaximo()})
		const minimo = vagones.min({v => v.pesoMaximo()})
		return maximo.pesoMaximo() - minimo.pesoMaximo()
	}
	
	method cantBanios() = vagones.count({v => v.tieneBanio()})
	
	method mantenimiento() = vagones.forEach({v => v.hacerMantenimiento()})
	
	method estaEquilibrada() {
		const pasajeros = vagones.map({v => v.cantPasajeros()})
		return pasajeros.max() - pasajeros.min()
	}
	
	
	//method estaOrganizada() = formacion.  con rango por indices
}




