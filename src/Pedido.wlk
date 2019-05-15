class Pedido {
	var property distancia
	var property tiempoMaximo	
	var property cantPasajeros
	var property coloresIncompatibles = #{}
	method velocidadRequerida(){return distancia/tiempoMaximo}
	method autoPuedeSatisfacer(auto){
		return 
		auto.velocidadMaxima()>=self.velocidadRequerida() + 10 and
		auto.capacidad()>=cantPasajeros and
		(not coloresIncompatibles.contains(auto.color()))
	}
	method acelerar(){tiempoMaximo= (tiempoMaximo-1).max(1)}
	method relajar(){tiempoMaximo = tiempoMaximo+1}
}
