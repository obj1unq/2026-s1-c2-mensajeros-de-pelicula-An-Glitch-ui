//======================================= PAQUETE ====================================
object paquete {
  var estaPago = true
  var mensajeroEncargado = null


  method mensajeroEncargado() {
    return mensajeroEncargado
  }

  method mensajeroEncargado(unMensajero) {
    mensajeroEncargado = unMensajero
  }
}

// ================================= MENSAJEROS ===================================
object jeanGray {
  const peso = 65
}

object neo {
  
}

object saraConnor {
  var peso = 65
  var transporte = "Moto"
  var cantidadDeAcoplados = 0


  method pesoDelTransporte(transporte) {
    return if (transporte == "Moto"){
        100 
    } else {
        500 + self.cantidadDeAcomplados()
    }
  }

  method cantidadDeAcomplados() {
    return 500*(self.cantidadDeAcomplados())    //media tonelada por cada acoplado que tenga el camión
  }

  method cantidadDeAcoplados(cantidad) {
    cantidadDeAcoplados = cantidad
  }

  method peso() {
    return peso
  }
  method peso(pesoDeSarah) {
    peso = pesoDeSarah
  }

  method transporte(unTransporte) {
    transporte = unTransporte
  }
}

// ================================ DESTINOS =======================================
object puenteBrooklyn {
  
}

object laMatrix {
  
}