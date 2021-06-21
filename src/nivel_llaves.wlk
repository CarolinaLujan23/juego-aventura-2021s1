import wollok.game.*
import fondo.*
import personajes.*
import elementos.*

object nivelLlaves {

	method configurate() {
		game.addVisual(new Fondo(image="fondoCompleto.png"))
		game.addVisual(new Puerta(image="puerta.png"))
		game.addVisual(personajeSimple)
		game.addVisual(new Llave(position=game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))))
		game.addVisual(new Llave(position=game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))))
		game.addVisual(new Llave(position=game.at(0.randomUpTo(game.width()-1).truncate(0), 0.randomUpTo(game.height()-1).truncate(0))))
		self.configurarTeclas()
		
	}
		
	method configurarTeclas() {
		keyboard.up().onPressDo({personajeSimple.moverHaciaArriba()})
		keyboard.down().onPressDo({personajeSimple.moverHaciaAbajo()})
		keyboard.right().onPressDo({personajeSimple.moverHaciaDerecha()})
		keyboard.left().onPressDo({personajeSimple.moverHaciaIzquierda()})	
		keyboard.space().onPressDo({personajeSimple.energiaQueTiene()})
		keyboard.n().onPressDo({personajeSimple.agarrar()})
		keyboard.t().onPressDo({ self.terminar() })

		// colisiones, ac� s� hacen falta
	}
	
	method terminar() {
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
