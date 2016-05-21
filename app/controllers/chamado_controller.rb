class ChamadoController < ApplicationController
    
    def new
       
    end
    
    def carregar
         bairro = Chamado.select('DISTINCT bairro').map(&:bairro)
         logradouro = Chamado.select('DISTINCT logradouro').map(&:logradouro)
     respond_to do |format|
        msg = [bairro,logradouro]
        format.json  { render :json => msg } # don't do msg.to_json
     end
    end
end
