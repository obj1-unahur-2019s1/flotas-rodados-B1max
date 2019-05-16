class Dependencia {
	const property flota = #{}
	var property cantEmpleados 
	var pedidos = #{}
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)} 
	method pesoTotalFlota(){return flota.sum({p=>p.peso()})}
	method estaBienEquipada(){return flota.size()>=3 and flota.all({v=>v.velocidadMaxima()>=100})}
	method capacidadTotalEnColor(color){return flota.filter({p=>p.color()==color}).sum({s=>s.capacidad()})}
	method colorDelRodadoMasRapido(){return flota.max({m=>m.velocidadMaxima()}).color() }
	method capacidadFaltante(){return (cantEmpleados-flota.sum({s=>s.capacidad()})).max(0) } 
	method esGrande(){return cantEmpleados>=40 and flota.size()>=5}
	method agregarPedido(mipedido){pedidos.add(mipedido)}
	method quitarPedido(mipedido){pedidos.remove(mipedido)}
	method totalPasajerosEnPedido(){return pedidos.sum({p=>p.cantPasajeros()})}
	method pedidosNoSatisfechos(){ 
		var lst = #{}
		pedidos.forEach{p=> flota.forEach{f=> if(!p.autoPuedeSatisfacer(f)){lst.add(p)}}}
		return lst
	}
	method noPuedenSerSatisfechos(){
		return pedidos.filter({e=> not self.puedeSerSatisFecho(e)})
	}
	method puedeSerSatisFecho(pedido){
		return flota.any({a => pedido.autoPuedeSatisfacer(a)})
	}
	method colorIncompatible(colorIn){
		return pedidos.all{f=> f.coloresIncompatibles().contains(colorIn)}
	}
	method relajarTodos(){
		pedidos.map{p=> p.relajar()}
	}
	method colorIncompatibles(colores){
		return flota.flatMap{p=> p.coloresIncompatibles()}
	}
	
}
