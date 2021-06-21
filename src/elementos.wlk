import wollok.game.*

import wollok.game.*
import personajes.*

class Bloque {
	var property position = game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))
	method image() = "bloque.jpg" 
	
	method esBloque() = true
	}
	
class Llave {
	var property position = game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))
	method image() = "llave.png" 

	method esLlave() = true
	}
	
object puerta {
	const property position = game.at(7,10)
	method image() = "puerta.png"
}	
	
class Pollo{
	var property position = game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))
	method image() = "pollo.png"
	}