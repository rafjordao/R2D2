class GraphController < ApplicationController
    
    before_action :require_user
    
    def new
    end
    
    def procurar
        x = params[:params]
        sql = "SELECT situacao, COUNT(id) as qtd FROM chamados C WHERE C.bairro = #{x} GROUP BY situacao ORDER BY situacao ASC"
        s = Chamado.find_by_sql(sql)
        puts s
        puts sql
        respond_to do |format|
            msg = s
            format.json  { render :json => msg } # don't do msg.to_json
        end
    end
    
    def procurarGeral
        x = params[:params]
        sql = "SELECT situacao, COUNT(id) as qtd FROM chamados GROUP BY situacao ORDER BY situacao ASC"
        s = Chamado.find_by_sql(sql)
        puts s
        puts sql
        respond_to do |format|
            msg = s
            format.json  { render :json => msg } # don't do msg.to_json
        end
    end
    
end