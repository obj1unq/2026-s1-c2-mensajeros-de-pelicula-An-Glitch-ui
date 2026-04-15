//======================================= PAQUETE ====================================
object paquete {
  var estaPago = true


  method estaPago() {
    return estaPago
  }

  method estaPago(estaPagoONo) {
    estaPago = estaPagoONo
  }

  method puedeSerEntregadoPor(unMensajero, unDestino) {
    return self.estaPago() && unDestino.puedePasar(unMensajero)
  }
}

// ================================= MENSAJEROS ===================================
object jeanGray {
  const peso = 65
  const puedeLlamar = true 


  method peso() {
    return peso
  }

  method puedeLlamar() {
    return puedeLlamar
  }
}

object neo {
  const peso = 0
  var tieneCredito = true


  method peso() {
    return peso
  }

  method puedeLlamar() {
    return tieneCredito
  }

  method tieneCredito() {
    return tieneCredito
  }

  method tieneCredito(credito) {
    tieneCredito = credito
  }
}

object saraConnor {
  var pesoPropio = 70
  var transporte = moto
  const puedeLlamar = false


  method pesoPropio(pesoDeSarah) {
    pesoPropio = pesoDeSarah
  }

  method pesoPropio() {
    return pesoPropio
  }

  method peso() {
    return pesoPropio + transporte.peso()
  }

  method transporte(unTransporte) {
    transporte = unTransporte
  }

  method puedeLlamar() {
    return puedeLlamar
  }
}

// ================================ TRANSPORTES ====================================
object moto {
  const peso = 100

  method peso() {
    return peso        //peso de la moto
  }
}

object camion {
    //var peso = 500
    var cantidadDeAcoplados = 0


  method peso() {
    return 500 + (cantidadDeAcoplados * 500)
    //return peso + (cantidadDeAcoplados * 500)
  }

  method cantidadDeAcoplados(cantidad) {
    cantidadDeAcoplados = cantidad
  }
} 

// ================================ DESTINOS =======================================
object puenteBrooklyn {

  method puedePasar(unMensajero) {
    return unMensajero.peso() <= 1000
  }
}

object matrix {

  method puedePasar(mensajero) {
    return mensajero.puedeLlamar()
  }
}

/*
1. El paquete de George que no está pago no puede ser llevado por Neo a la matrix.
  > paquete.estaPago(false)                      ---> OK
  > paquete.puedeSerEntregadoPor(neo, matrix)    ---> false

2. El paquete de George que sí está pago puede ser llevado por Jean a la matrix
  > paquete.estaPago(true)                         ---> OK
  > paquete.puedeSerEntregadoPor(jeanGray, matrix) ---> true

3. El paquete de George que sí está pago no puede ser llevado por Sara (que pesa 70kg) a Brooklyn si es que utiliza un camión con un acoplado.
  > saraConnor.cantidadDeAcoplados(1)                          ---> OK
  > saraConnor.transporte("Camion")                            ---> OK
  > paquete.puedeSerEntregadoPor(saraConnor, puenteBrooklyn)   ---> false

4. La entrega anterior puede hacerse si Sara usa una moto
  > saraConnor.Transporte("Moto")                              ---> OK
  > aquete.puedeSerEntregadoPor(saraConnor, puenteBrooklyn)    ---> true

*/
