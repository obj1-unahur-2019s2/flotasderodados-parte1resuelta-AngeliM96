import dependencias.*
import vehiculos.*

class Pedidos 
{
	var property distancia
	var property tiempoMaximo
	var property pasajeros
	var property coloresIncompatibles
	method velocidadMinima()
	{
		return distancia / tiempoMaximo
	}
	
	method loPuedeHacer(auto)
	{
		return auto.velocidadMaxima() >= self.velocidadMinima() + 10 and 
		auto.capacidad() >= self.pasajeros() and not 
		auto.color() == self.coloresIncompatibles()
	}
	method acelerar() { tiempoMaximo -= 1}	
	method relajar() { tiempoMaximo += 1}	
}
