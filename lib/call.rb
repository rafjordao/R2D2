class Call
    
    attr_reader :service_group, :service, :public_place, :district, :demand_date
    attr_accessor :status, :update_date
    
    def initialize
        @status = 'Preparação'
        @service_group = 'Arborização'
        @service = 'Poda de Árvores'
        @public_place = '1TR FREI DAMIAO'
        @district = 'PASSARINHO'
        @demand_date = '15/02/2016'
        @update_date = '23/02/2016'
    end
    
end