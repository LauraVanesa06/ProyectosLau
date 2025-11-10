class Math:
    def suma(self,a,b):
        if a<0 or b<0:
            raise ValueError("No ingresar numero negativos")
        suma = a + b
        return suma
    def resta(self,a,b):