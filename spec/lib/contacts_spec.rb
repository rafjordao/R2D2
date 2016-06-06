require "spec_helper"
require "contacts"

describe Contacts do
    
    valid_input = /^\s*[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ][A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ '-]{1,}$/
    
    cont= Contacts.new
    
    it "Instance of user" do
        expect(cont).to be_an_instance_of(Contacts)
    end
    
    it "subject is valid" do
        expect(cont.subject).to match(valid_input)
        expect(cont.subject).not_to be_empty
        expect(cont.subject).to be_an_instance_of(String)
        
    end
    
    it "menssage is valid" do
        expect(cont.menssage).to match(valid_input)
        expect(cont.menssage).not_to be_empty
        expect(cont.menssage).to be_an_instance_of(String)
        
    end
end
