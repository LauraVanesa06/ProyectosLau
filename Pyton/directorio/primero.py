class A:
    def __init__(self):
        self.attrList = []   

    def add(self, obj):
        if isinstance(obj, B):  
            self.attrList.append(obj)
        else:
            raise TypeError("Solo se pueden agregar objetos de tipo B")

    def __len__(self):
        return len(self.attrList)

class B:
    def __init__(self, valor):
        self.valor = valor

    def _representacion_(self):   
        return f"B({self.valor})"

# 1. instanciar sin objetos agregados
OBJETO = A()
print(len(OBJETO))
print(OBJETO.attrList)

#Add objetos y validar cant
a = A()
a.add(B(5))
a.add(B(10))
a.add(B(20))
a.add(B(30))

print(len(a))      
print(a.attrList)  

#3. instancias con tipos correctos
a = A()

a.add(B(5))     

a.add("hola")  
