object municipalidad {
  const dependencias = #{}
  
  method agregarDependencia(dependencia) {
    dependencias.add(dependencia)
  }
}

class Dependencia {
  const flotaDeRodados = []
  const empleados
  
  method agregarAFlota(rodado) {
    flotaDeRodados.add(rodado)
  }
  
  method quitarDeFlota(rodado) {
    flotaDeRodados.remove(rodado)
  }
  
  method pesoTotalFlota() = flotaDeRodados.sum({ r => r.peso() })
  
  method estaBienEquipada() = (flotaDeRodados.size() >= 3) and flotaDeRodados.all(
    { r => r.velocidadMaxima() >= 100 }
  )
  
  method capacidadTotalEnColor(color) = flotaDeRodados.filter(
    { r => r.color() == color }
  ).sum({ r => r.capacidad() })
  
  method colorDelRodadoMasRapido() = flotaDeRodados.max(
    { r => r.velocidadMaxima() }
  )
  
  method capacidadFaltante() = empleados - flotaDeRodados.size()
  
  method esGrande() = (empleados >= 40) and (flotaDeRodados.size() >= 5)
}

class ChevroletCorsa {
  const color
  
  method color() = color
  
  method capacidad() = 4
  
  method velocidadMaxima() = 150
  
  method peso() = 1300
}

class RenaultKwid {
  const tieneTanqueAdicional
  
  method color() = "azul"
  
  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  
  method velocidadMaxima() = if (tieneTanqueAdicional) 120 else 110
  
  method peso() = if (tieneTanqueAdicional) 1350 else 1200
}

object trafic {
  var interior = interiorComodo
  var motor = motorPulenta
  
  method interior() = interior
  
  method motor() = motor
  
  method cambiarAInteriorPopular() {
    interior = interiorPopular
  }
  
  method cambiarAMotorBataton() {
    motor = motorBataton
  }
  
  method cambiarAInteriorComodo() {
    interior = interiorComodo
  }
  
  method cambiarAMotorPulenta() {
    motor = motorPulenta
  }
  
  method color() = "blanco"
  
  method capacidad() = interior.capacidad()
  
  method velocidadMaxima() = motor.velocidadMaxima()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
}

object interiorComodo {
  method capacidad() = 5
  
  method peso() = 700
}

object interiorPopular {
  method capacidad() = 12
  
  method peso() = 1000
}

object motorPulenta {
  method peso() = 800
  
  method velocidadMaxima() = 130
}

object motorBataton {
  method peso() = 500
  
  method velocidadMaxima() = 80
}

class AutoEspecial {
  const capacidad
  const velocidadMaxima
  const peso
  const color
  
  method capacidad() = capacidad
  
  method velocidadMaxima() = velocidadMaxima
  
  method peso() = peso
  
  method color() = color
}