class CreateLogradouros < ActiveRecord::Migration
  def change
    create_table :logradouros do |t|
      t.string :nome_logradouro
      t.timestamps null: false
    end
  end
end
