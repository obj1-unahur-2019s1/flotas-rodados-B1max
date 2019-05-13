class Pedido {
	var distancia
	var tiempoMaximo	
	var cantPasajeros
	var coloresIncompatibles
	method velocidadRequerida(){return distancia/tiempoMaximo}
	method autoPuedeSatisfacer(auto){
		return 
		auto.velocidadMaxima()>=self.velocidadRequerida() + 10 and
		auto.capacidad()>=cantPasajeros and
		(not coloresIncompatibles.contains(auto.color()))
	}
	
	
}
