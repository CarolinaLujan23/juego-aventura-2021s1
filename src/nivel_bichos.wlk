import fondo.*
import personajes.*
import elementos.* 
import wollok.game.*

object nivelBichos {

	method configurate() {
		game.addVisual(personajeSimple)
		game.addVisual(new Fondo(image="fondoCompleto.png"))
		self.configurarTeclas()
		self.aparecenBichos()
		
		}
	method bichos(){
		game.onTick(2000, "movimiento", {e=>e.movete()})
	}
		
	method aparecenBichos() {
		game.whenCollideDo(personajeSimple, {e=>e.perderEnergia()})
		}
		
	method matarBicho() {}	
		
	method configurarTeclas() {
		keyboard.up().onPressDo({personajeSimple.moverHaciaArriba()})
		keyboard.down().onPressDo({personajeSimple.moverHaciaAbajo()})
		keyboard.right().onPressDo({personajeSimple.moverHaciaDerecha()})
		keyboard.left().onPressDo({personajeSimple.moverHaciaIzquierda()})	
		keyboard.space().onPressDo({personajeSimple.energiaQueTiene()})
		keyboard.g().onPressDo({ self.ganar() })

	}
	
	method ganar() {
		game.clear()
		game.addVisual(new Fondo(image="fondoCompleto.png"))
		game.schedule(2500, {
			game.clear()
			game.addVisual(new Fondo(image="ganamos.png"))
			game.schedule(3000, {
				game.clear()
				game.stop()
			})
		})
	}
}