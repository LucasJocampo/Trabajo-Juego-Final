import wollok.game.*
import jogo.*
import skin.*
import personaje.*

object menu {
	
	var property ready = false
	
	var property menuskin = "menu.PNG"
	// HUD
    var property tiempo = 0
    var property puntos = 0
	
	method listo(){
		ready =true
	}

	method menucito() {
		game.clear()
		game.title("milei en el banco central simulator")
		game.width(28)
  		game.height(15)
  		skin.setSkin("milei")
  		game.addVisual(nuevoFondo)
  		game.boardGround(skin.fondo())
  		keyboard.f().onPressDo({menu.arrancar()})		
	}
	
	method hud(){
        // Mostrar tiempo y puntos en el HUD
  //      game.drawText("Tiempo: " + tiempo, 20, 20)
    //    game.drawText("Puntos: " + puntos, 20, 40)
	}
	
	method arrancar(){
					
			game.clear()
			game.width(28)
  			game.height(15)
			game.cellSize(60)
			jogo.generarLayout()
			jogo.iniciarNivel()
			keyboard.w().onPressDo({if (monigote.vivo()) monigote.arriba()})
			keyboard.s().onPressDo({if (monigote.vivo())  monigote.abajo()})
			keyboard.a().onPressDo({if (monigote.vivo())  monigote.izquierda()})
			keyboard.d().onPressDo({if (monigote.vivo())  monigote.derecha()})
			keyboard.space().onPressDo({if (monigote.vivo()) monigote.ponerBomba()})
			game.whenCollideDo(monigote, {e => e.chocar()})
			game.onTick(200, "mover malos", { jogo.malos().forEach({e => e.mover()}) })
	}
}
