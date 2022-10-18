import personas.*

class Planetas{
	const property habitantes = #{}
	var cantMuseos = 0
	var longitudTotalMurallas
	
	method agregarPersona(unaPersona){
		habitantes.add(unaPersona)
	}
	
	method delegacionDiplomatica() = habitantes.filter({p => p.esDestacada()})
	
	method valorInicialDefensa() = habitantes.count({p => p.potencia() >= 30})
	
	method todosConInteligencia(cantidad) = habitantes.all({p => p.inteligencia() >= cantidad})
	
	method esCulto() = cantMuseos >= 2 and self.todosConInteligencia(10)
	
	method potenciaReal() = habitantes.sum({p => p.potencia()})
	
	method construirMurallas(cantidad){
		longitudTotalMurallas += cantidad
	}
	
	method fundarMuseo(){
		cantMuseos++
	}
	
	method potenciaMasPotente() = habitantes.max({p => p.potencia()}).potencia()
	
	method potenciaAparente() = self.potenciaMasPotente() * habitantes.size()
	
	method necesitaReforzarse() = self.potenciaAparente() >= (self.potenciaReal() * 2)
	
	method recibirTributos(){
		habitantes.forEach({p => p.ofrecerTributo(self)})
	}
	
	method habitantesValiosos() =
		habitantes.filter({p => p.valor() >= 40})
	
	method apaciguar(otroPlaneta){
		self.habitantesValiosos().forEach({p => p.ofrecerTributo(otroPlaneta)})
	}
	
}