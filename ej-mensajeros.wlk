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
  var llamarA = null
  const puedeLlamar = true 


  method llamarA() {
    return llamarA
  }

  method llamarA(unMensajero) {
    llamarA = unMensajero
  }

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
  var peso = 70
  var transporte = "Moto"
  var cantidadDeAcoplados = 0


  method pesoDelTransporte() {
    return if (transporte == "Moto"){
        100 
    } else {
        500 + (cantidadDeAcoplados * 500)
    }
  }

  method cantidadDeAcoplados(cantidad) {
    cantidadDeAcoplados = cantidad
  }

  method peso() {
    return peso + self.pesoDelTransporte()
  }
  method peso(pesoDeSarah) {
    peso = pesoDeSarah
  }

  method pesoTotal() {
    return peso + self.pesoDelTransporte()
  }

  method transporte(unTransporte) {
    transporte = unTransporte
  }

  method puedeLlamar() {
    return false
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