class CreateMonitorandos < ActiveRecord::Migration
  def change
    create_table :monitorandos do |t|
      t.integer :id_user
      t.integer :id_chamado
      t.string :bairro
      t.string :logradouro
      t.timestamps null: false
    end
  end
end
