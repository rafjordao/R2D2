class ChamadoController < ApplicationController
    
    before_action :require_user
    
    def new
        @chamados = []
        @chamado = Chamado.new
        @logradouros = []
      
       #@chamados = Chamado.find_by_sql('select * from chamados limit 10')
    end
    
    def procurar
        puts params
        x = Chamado.new(chamado_params)
        if params[:commit] == 'Pesquisar por Bairro'
            sql = "select C.*,M.id_user,M.id_chamado from chamados C left outer join monitorandos M on M.id_user = '#{current_user.id}' and M.id_chamado=C.id where C.bairro = '#{x.bairro}' "
            @chamados = Chamado.find_by_sql(sql)
            @chamado = Chamado.new
            render "chamado/new"
        elsif params[:commit] == 'Monitorar Bairro'
            sql = "select C.*,M.id_user,M.id_chamado from chamados C left outer join monitorandos M on M.id_user = '#{current_user.id}' and M.id_chamado=C.id where C.bairro = '#{x.bairro}' "
            @chamados = Chamado.find_by_sql(sql)
            @chamados.each do |c|
                if c.id_user != current_user.id
                    m=Monitorando.new
                    m['id_user'] = current_user.id
                    m['id_chamado'] = c.id
                    m['bairro'] = c.bairro
                    m['logradouro'] = c.logradouro
                    m.save!
                end
            end
            flash[:success] = "O bairro #{x.bairro} está sendo monitorado com sucesso!"
            redirect_to '/'
        end
    end
    
    def historico
        
        @chamado = Chamado.new
        begin
        dia = params[:chamado][:inicio][3..4] 
        mes = params[:chamado][:inicio][0..1] 
        ano = params[:chamado][:inicio][6..9]
        
        diaf = params[:chamado][:fim][3..4] 
        mesf = params[:chamado][:fim][0..1] 
        anof = params[:chamado][:fim][6..9]
        @chamado['logradouro'] = params[:chamado]['logradouro']
        @chamados = Chamado.find_by_sql("select * from chamados where data_demanda between date('#{ano}-#{mes}-#{dia}') and date('#{anof}-#{mesf}-#{diaf}') and logradouro = '#{params[:chamado]['logradouro']}'")
        
        
        puts @chamados.to_yaml
        
        rescue
        @chamado['logradouro'] = params[:logradouro]
        
        @chamados = []
        end
        
        
    end
    
    
    def procurarLogradouro
        x = Chamado.new(chamado_params)
        if params[:commit] == 'Pesquisar por Logradouro'
            sql = "select C.*,M.id_user,M.id_chamado from chamados C left outer join monitorandos M on M.id_user = '#{current_user.id}' and M.id_chamado=C.id where C.logradouro = '#{x.logradouro}'"
            @chamados = Chamado.find_by_sql(sql)
            puts @chamados.to_yaml
            @chamado = Chamado.new
            render "chamado/new"
        elsif params[:commit] == 'Monitorar Logradouro'
            sql = "select C.*,M.id_user,M.id_chamado from chamados C left outer join monitorandos M on M.id_user = '#{current_user.id}' and M.id_chamado=C.id where C.logradouro = '#{x.logradouro}'"
            @chamados = Chamado.find_by_sql(sql)
            @chamados.each do |c|
                if c.id_user != current_user.id
                    m=Monitorando.new
                    m['id_user'] = current_user.id
                    m['id_chamado'] = c.id
                    m['bairro'] = c.bairro
                    m['logradouro'] = c.logradouro
                    m.save!
                end
            end
            flash[:success] = "O logradouro #{x.logradouro} está sendo monitorado com sucesso!"
            redirect_to '/'
        end
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
    
    def monitorar
        puts "Entrou"
        x = params[:params]
        x = x.split(',')
        puts x[0]
        puts x[1]
        puts x[2]
        m = Monitorando.new
        m['id_user'] = current_user.id
        m['id_chamado'] = x[0].to_i
        m['bairro'] = x[1]
        m['logradouro'] = x[2]
        #puts m.to_yaml
        m.save!
        respond_to do |format|
        msg = ['fwfw']
        format.json  { render :json => msg } # don't do msg.to_json
     end
    end
    
    def desMonitorar
        x = params[:params]
        x = x.split(',')
        puts x[0]
        Monitorando.where(id_user: current_user.id, id_chamado: x[0].to_i).destroy_all
       
        #ActiveRecord::Base.connection.execute('delete from ')
        respond_to do |format|
        msg = ['fwfw']
        format.json  { render :json => msg } # don't do msg.to_json
    end
    end
    
    private 
        def chamado_params 
            params.require(:chamado).permit(:bairro, :logradouro,:params)
        end 
    
end
