require "spec_helper"
require "chamado"

describe Chamado do
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    valid_input = /^\s*[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ][A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ '-]{1,}$/
    
    cha=Chamado.new
    
    it "Instance of chamado" do
        expect(cha).to be_an_instance_of(Chamado)
    end
    
    it "servico is valid" do
        expect(cha.servico).to match(valid_input)
        expect(cha.servico).not_to match(regex_number)
        expect(cha.servico).not_to be_empty
        expect(cha.servico).to be_an_instance_of(String)
    end
    
    it "bairro is valid" do
        expect(cha.bairro).to match(valid_input)
        expect(cha.bairro).not_to match(regex_number)
        expect(cha.bairro).not_to be_empty
        expect(cha.bairro).to be_an_instance_of(String)
    end
    
    it "logradouro is valid" do
        expect(cha.logradouro).to match(valid_input)
        expect(cha.logradouro).not_to match(regex_number)
        expect(cha.logradouro).not_to be_empty
        expect(cha.logradouro).to be_an_instance_of(String)
    end
    
    it "datacriacao is valid" do
        expect(cha.datacriacao).to match(regex_number)
        expect(cha.datacriacao).not_to match(regex_letters)
        expect(cha.datacriacao).not_to be_empty
        expect(cha.datacriacao).not_to match("12345")
        expect(cha.datacriacao).not_to match("abcde")
    end
    
    it "situacao is valid" do
        expect(cha.situacao).to match(valid_input)
        expect(cha.situacao).not_to match(regex_number)
        expect(cha.situacao).not_to be_empty
        expect(cha.situacao).to be_an_instance_of(String)
    end
end