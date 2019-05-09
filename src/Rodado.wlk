class Rodado {
	
	var property capacidad
	var velocidadMaxima
	var property color = "azul"
	var peso
	var property tieneGas = false
	method capacidad(unValor){capacidad = unValor}
	method capacidad(){return if (tieneGas){capacidad-1}else{capacidad}}
	method velocidadMaxima(velocidad){velocidadMaxima=velocidad}
	method velocidadMaxima(){return if(tieneGas){velocidadMaxima}else{velocidadMaxima-10}}
	method peso(mypeso){peso=mypeso}
	method peso(){return if(tieneGas){peso+150}else{peso}}
	
	
}
