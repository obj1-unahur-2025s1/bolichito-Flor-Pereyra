import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method esBrillante() {
        return objetoEnMostrador.esBrillante() && 
        objetoEnVidriera.esBrillante()
    }

    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor || 
        objetoEnVidriera.color() == unColor
    }
//not self.estaEquilibrado() es lo mismo que !self.estaEquilibrado()
    method puedeMejorar() {
        return !self.estaEquilibrado() ||  
        self.esMonocromatico()
    }

    method tieneAlgoQueLeGusta(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) ||
        unaPersona.leGusta(objetoEnVidriera)
    }
}
