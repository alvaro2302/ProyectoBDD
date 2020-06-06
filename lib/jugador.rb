class Jugador
    attr_accessor :Turno, :Nombre, :Puntos

    def initialize()
        @Turno = true
        @Nombre = ""
        @Puntos = 0
    end  

    def nombre
        return @Nombre
    end

    def turno()
        return @Turno
    end

    def puntos()
        return @Puntos
    end

    def poner_nombre(nombre)
        @Nombre = nombre
    end

    def cambiar_turno(es_mi_turno)
        @Turno = es_mi_turno
    end

    def aumentar_punto()
        puntoActual = @Puntos
        @Puntos = puntoActual+1
    end
end