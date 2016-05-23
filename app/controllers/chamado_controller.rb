class ChamadoController < ApplicationController
    
    def new
        @chamados = []
        @chamado = Chamado.new
        @logradouros = []
      
       #@chamados = Chamado.find_by_sql('select * from chamados limit 10')
    end
    
    def procurar
         x = Chamado.new(chamado_params)
         puts x
         sql = "select * from chamados where bairro = '#{x.bairro}'"
         @chamados = Chamado.find_by_sql(sql)
         @chamado = Chamado.new
         render "chamado/new"
    end
    
    def procurarLogradouro
         x = Chamado.new(chamado_params)
         puts x
         sql = "select * from chamados where logradouro = '#{x.logradouro}'"
         @chamados = Chamado.find_by_sql(sql)
         @chamado = Chamado.new
         render "chamado/new"
    end
    
    def carregarLogradouro
         x = params[:params]
         sql = "select distinct C.logradouro from chamados C where bairro = #{x}"
         puts sql
         busca = Chamado.find_by_sql(sql)
        
         respond_to do |format|
        msg = busca
        format.json  { render :json => msg } # don't do msg.to_json
     end
    end
    
    def carregar
       
         bairro = Chamado.select('DISTINCT bairro').map(&:bairro)
       
     respond_to do |format|
        msg = bairro
        format.json  { render :json => msg } # don't do msg.to_json
     end
    end
    
    def setLogradouro
         x = params[:params]
         logradouros(x)
        respond_to do |format|
        msg = 
        format.json  { render :json => msg } # don't do msg.to_json
     end
    end

    
    private 
        def chamado_params 
            params.require(:chamado).permit(:bairro, :logradouro)
        end 
    
end
