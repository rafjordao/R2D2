require "spec_helper"
require "monitorando"

describe Monitorando do
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    valid_input = /^\s*[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ][A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ '-]{1,}$/
    
    mon=Monitorando.new
    
    it "Instance of monirando" do
        expect(mon).to be_an_instance_of(Monitorando)
    end
    
    it "id_chamado is valid" do
        expect(mon.id_chamado).to be_an(Integer)
        expect(mon.id_chamado.to_s).to match(regex_number)
        expect(mon.id_chamado.to_s).not_to match(regex_letters)
        expect(mon.id_chamado.to_s).not_to be_empty
        expect(mon.id_chamado.to_s).not_to match("12345")
        expect(mon.id_chamado.to_s).not_to match("abcde")
    end
    
    it "id_user is valid" do
        expect(mon.id_user).to be_an(Integer)
        expect(mon.id_user.to_s).to match(regex_number)
        expect(mon.id_user.to_s).not_to match(regex_letters)
        expect(mon.id_user.to_s).not_to be_empty
        expect(mon.id_user.to_s).not_to match("12345")
        expect(mon.id_user.to_s).not_to match("abcde")
    end
        
    
    it "bairro is valid" do
        expect(mon.bairro).to match(valid_input)
        expect(mon.bairro).not_to match(regex_number)
        expect(mon.bairro).not_to be_empty
        expect(mon.bairro).to be_an_instance_of(String)
    end
    
    it "logradouro is valid" do
        expect(mon.logradouro).to match(valid_input)
        expect(mon.logradouro).not_to match(regex_number)
        expect(mon.logradouro).not_to be_empty
        expect(mon.logradouro).to be_an_instance_of(String)
    end
end