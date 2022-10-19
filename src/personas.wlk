class Personas{
	var property edad
	
	method potencia() = 20
	
	method inteligencia()=
		if (edad.between(20,40)) 12
		else 8
	
	method esDestacada() = edad ==25 or edad == 35
	
	method ofrecerTributo(unPLaneta){}
	
	method valor() = self.potencia() + self.inteligencia()
}

class Atletas inherits Personas{
	var masaMuscular = 4
	var cantTecnicasConocidas = 2
	
	override method potencia() =
		super() + (masaMuscular * cantTecnicasConocidas)
	
	override method esDestacada() =
		super() or cantTecnicasConocidas > 5
	
	method entrenar(dias){
		masaMuscular += dias.div(5)
	}
	
	method aprenderUnaTecnica(){
		cantTecnicasConocidas++
	}
	
	override method ofrecerTributo(unPlaneta){
		unPlaneta.construirMurallas(2)
	}
}

class Docentes inherits Personas{
	var cantidadDeCursos = 0
	
	override method inteligencia() =
		super() + (cantidadDeCursos * 2)
		
	override method esDestacada() = cantidadDeCursos > 3
	
	override method ofrecerTributo(unPlaneta){
		unPlaneta.fundarMuseo()
	}
	
	override method valor() = 
		super() + 5
}

class Soldados inherits Personas{
	const coleccionArmas = []
	
	method totalPotenciaDeArmas() = 
		coleccionArmas.sum({a => a.potenciaQueOtorga(self)})
	
	override method potencia() =
		super() + self.totalPotenciaDeArmas()
	
	override method ofrecerTributo(unPlaneta){
		unPlaneta.construirMurallas(5)
	}
}





