class AddNomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :sobrenome, :string
  end
end