class CreateChamados < ActiveRecord::Migration
  def change
    create_table :chamados do |t|
      t.string :grupo_servico
      t.string :servico
      t.string :logradouro
      t.string :bairro
      t.string :situacao
      t.date :data_demanda
      t.date :data_update
    end
  end
end
