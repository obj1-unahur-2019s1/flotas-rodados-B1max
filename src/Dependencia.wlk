class Dependencia {
	const property flota = #{}
	var property cantEmpleados 
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)} 
	method pesoTotalFlota(){return flota.sum({p=>p.peso()})}
	method estaBienEquipada(){return flota.size()>=3 and flota.all({v=>v.velocidadMaxima()>=100})}
	method capacidadTotalEnColor(color){flota.filter({p=>p.color()==color}).sum({s=>s.capacidad()})}
	method colorDelRodadoMasRapido(){flota.max({m=>m.velocidadMaxima()}).color() }
	method capacidadFaltante(){return cantEmpleados-flota.sum({s=>s.capacidad()}) } 
	method esGrande(){return cantEmpleados>=40 and flota.size()>=5} 
}
