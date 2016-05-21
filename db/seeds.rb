# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
require 'date'
csv_text = File.read(Rails.root.join('lib', 'seeds', '156_cco_2015.csv'))
csv = CSV.parse(csv_text, :headers => true)
i=0
csv.each do |row|
       lin = row.to_s
       linha = lin.split(";")
       b = Chamado.new
       i=i+1
       puts i
       b['grupo_servico']=linha[1].to_s
       b['servico']=linha[3].to_s
       b['logradouro']=linha[4].to_s
       b['bairro']=linha[6].to_s
       dt = Date.strptime(linha[8].gsub("/","-"))
       dt2 = Date.strptime(linha[10].gsub("/","-"))
       b['data_demanda']=dt
       b['data_update']=dt2
       b['situacao']=linha[9].to_s
       b.save!
    #t.nome_bairro = row['nome_bairro']
end



