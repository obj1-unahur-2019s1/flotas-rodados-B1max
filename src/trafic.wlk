object trafic{
	var property interior = comodo
	var property motor = pulenta
	const pesoBase = 4000
	method capacidad(){return interior.capacidad()}
	method peso(){return motor.peso()+interior.peso()+pesoBase}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method color(){return "blanco"}
}
object popular{
	method capacidad() = 12
	method peso() =1000
}
object comodo{
	method capacidad() = 5
	method peso() = 700
}
object pulenta{
	method peso ()=800
	method velocidadMaxima()=130
}
object baraton{
	method peso()=500
	method velocidadMaxima()=80
}
