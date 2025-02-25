import wollok.game.*

object skin {
	
	var property skin
	var property sonidos = [1..10].flatten()
	var property enemigos = ["enemigo1.png", "enemigo2.png", "enemigo3.png", "enemigo4.png"]
	var property monigote = "monigote.png"
	var property fondo = "fondo.png"
	var property mensajeMuerte = "mensajeMuerte.png"
	var property sonidoMuerte = "sonidoMuerte.mp3"
	var property bomba = "bomba.png"	
	var property explosion = "explosion.png"
	var property mensajeMuerteBomba = "troll.png"
	var property menuSkin = "menu.PNG"
	
	method setSkin(nombre) {
		skin = nombre + "/"
		sonidos = sonidos.map({e => (skin + "/sonidos/" + e + ".mp3")})
		enemigos = enemigos.map({e => (skin  + e)})
		explosion = skin + explosion
		monigote = skin + monigote
		bomba = skin + bomba
		fondo = skin + fondo
		mensajeMuerte = skin + mensajeMuerte
		mensajeMuerteBomba = skin + mensajeMuerteBomba
		sonidoMuerte = skin + "/sonidos/" + sonidoMuerte		
	}
	
}
