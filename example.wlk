object municipalidad {
  const flotaDeRodados = []
}

class ChevroletCorsa {
  const color
  
  method capacidad() = 4
  
  method velocidadMaxima() = 150
  
  method peso() = 1300
}

class RenaultKwid {
  var tieneTanqueAdicional
  
  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110
  method peso() = if(tieneTanqueAdicional) 1350 else 1200
}

object trafic {
  
}

object interiorComodo {
  method capacidad() = 5
  method peso() = 700
}

object interiorPopular {
  method capacidad() = 12
  method peso() = 1000
}

