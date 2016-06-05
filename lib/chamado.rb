class Chamado
    attr_accessor :servico , :bairro , :logradouro , :datacriacao , :situacao 
    
    def initialize
        @servico = "PODA DE ARVORES"
        @bairro = "	IPUTINGA"
        @logradouro = "AV CAXANGA"
        @datacriacao = "2015-03-26"
        @situacao = "EXECUÇÃO"
    end
end