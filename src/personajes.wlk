import wollok.game.*
import nivel_bloques.*
import elementos.*

// en la implementación real, conviene tener un personaje por nivel
// los personajes probablemente tengan un comportamiendo más complejo que solamente
// imagen y posición

object personajeSimple {
	var property position = game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))
	var property energia = 40 
	var property pasos = 0

	method image() = "player.png"
	
	method moverHaciaArriba() {
		self.position(self.position().up(0.5))
		if(self.position().y() != game.height()-1) 
		self.contarPasos()
		if (new Bloque().esBloque()){
 			new Bloque().position(self.position())
	    }
	    if (new Llave().esLlave()){
 			new Llave().position(self.position())
	    }
	    
	}
	method moverHaciaIzquierda() {
		if(self.position().x() != 0) 
		self.position(self.position().left(0.5))
		self.contarPasos()
		if (new Bloque().esBloque()){
 			new Bloque().position(self.position())
	    }
	    if (new Llave().esLlave()){
 			new Llave().position(self.position())
	    }
	    

	}
	method moverHaciaDerecha() {
		self.position(self.position().right(0.5))	
		if(self.position().y() != game.width()-1)
		self.contarPasos()
		if (new Bloque().esBloque()){
 			new Bloque().position(self.position())
	    }
	    if (new Llave().esLlave()){
 			new Llave().position(self.position())
	    }
		
	}
	method moverHaciaAbajo() {
		self.position(self.position().down(0.5))		
		if(self.position().x() != 0)
		self.contarPasos()
		if (new Bloque().esBloque()){
 			new Bloque().position(self.position())
	    }
	    if (new Llave().esLlave()){
 			new Llave().position(self.position())
	    }

		
	}
	method energiaQueTiene(){ 
		game.say(self, "Pasos: " + pasos + " Energia:" + energia)
	}
	
	method contarPasos() {
 		pasos +=0.5
 		if (pasos >=0.5 ) {
 			energia-=0.5
 		}
	}
	
	method perderEnergiaPorBicho() {
		energia -= 20
	}
	
	method agarrarPollo() {
		energia += 10
	}		
	
	method agarrar() {
		if (esBloque().(self.position())
		}
		
	}
	
}

