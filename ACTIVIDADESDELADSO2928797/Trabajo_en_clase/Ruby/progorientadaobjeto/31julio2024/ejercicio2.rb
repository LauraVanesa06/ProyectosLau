class Aprendiz
    attr_accessor :documento, :seguro, :ficha
    def initialize(d, s)
            self.d = documento
            self.s = seguro
    end
end

laura = Aprendiz.new(1042249249,3456)
laura.ficha = 2928707
puts laura.documento
puts laura.seguro
puts laura.ficha
