object tom {
	
	var energia = 50
	

	method comer(raton) {
		energia = energia + self.energiaAlComer(raton)
	}
	
	method correr(distancia){
		energia = energia - self.energiaAlRecorrer(distancia)
	}
	//es una consulta.
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

	method energiaAlRecorrer(distancia){
		return (distancia / 2)
	}

	method energiaAlComer(raton) {
	  return 12 + raton.peso()
	}

	method puedeComer_A(raton, distancia) {
	  return self.energiaAlRecorrer(distancia) < energia
	}
	
	method quiereComer_A(raton, distancia) {
	  return self.puedeComer_A(raton, distancia) and 
	  (self.energiaAlRecorrer(distancia)) <  self.energiaAlComer(raton)
	}
}

object jerry {
	
	var edad = 2

	method peso() {
	  return edad * 20
	}

	method cumplir() {
	  edad = edad + 1
	}

}

object nibbles {

	method peso() {
	  return 35
	}

}
