class WelcomeController < ApplicationController
  
  before_action :require_user, only: [:index]
  
  def index
     @chamados = []
      sql = "select C.*,M.id_user,M.id_chamado from chamados C inner join monitorandos M on M.id_user = '#{current_user.id}' and M.id_chamado=C.id "
     @chamados = Chamado.find_by_sql(sql)
  end
  
end
