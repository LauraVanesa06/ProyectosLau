from car import Car

def test_es_una_instancia_car():
    mi_auto = Car("ABC123", "ROJO")
    assert isinstance


def test_attributos_correctos():
    mi_auto = Car("ABC123", "ROJO")
    assert mi_auto.placa == "ABC123"
    assert mi_auto.color == "ROJO"