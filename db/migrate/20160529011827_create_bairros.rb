class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome_bairro
      t.timestamps null: false
    end
  end
end
