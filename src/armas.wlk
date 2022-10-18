import personas.*


class Pistolete{
	var largo
	
	method potenciaQueOtorga(unSoldado) =
		if (unSoldado.edad() > 30) largo*3
		else largo*2
}

class Espadon{
	var peso
	
	method potenciaQueOtorga(unSoldado) =
		if(unSoldado.edad()< 40) peso.div(2)
		else 6
}