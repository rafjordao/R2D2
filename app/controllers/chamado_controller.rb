class ChamadoController < ApplicationController
    
    def new
       @chamados = Chamado.find_by_sql('select * from chamados limit 10')
    end
    def procurar
         x = params[:params]
         sql = "select C.chamados from chamados C where bairro = #{x}"
         @chamados = Chamado.find_by_sql(sql)
    end
    def carregarLogradouro
         x = params[:params]
         sql = "select C.logradouro from chamados C where bairro = #{x}"
         puts sql
         busca = Chamado.find_by_sql(sql)
        
         respond_to do |format|
        msg = busca
        format.json  { render :json => msg } # don't do msg.to_json
     end
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
