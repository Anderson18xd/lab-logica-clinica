class Medico:
    def __init__(self, id_, nombre, colegiatura, especialidad):
        self._id = id_
        self._nombre = nombre
        self._colegiatura = colegiatura
        self._especialidad = especialidad
    @property
    def id(self):
        return self._id
    @id.setter
    def id(self, valor):
        self._id = valor
    @property
    def nombre(self):
        return self._nombre
    @nombre.setter
    def nombre(self, valor):
        if not valor or len(valor) == 0:
            raise ValueError("El nombre no peude ser cero")
        self._nombre = valor
    @property
    def colegiatura(self):
        return self._colegiatura
    @colegiatura.setter
    def colegiatura(self, valor):
        if not valor or valor <= 0:
            raise ValueError("La colegiatura no peude ser cero")
        self._colegiatura = valor
    @property
    def especialidad(self):
        return self._especialidad
    @especialidad.setter
    def especialidad(self, valor):
        self._especialidad = valor
    def __str__(self):
        return f"ID: {self._id} | NOMBRE: {self._nombre} | COLEGIATURA: {self._colegiatura} | ESPECIALIDAD : {self._especialidad} "
