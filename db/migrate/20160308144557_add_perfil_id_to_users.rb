class AddPerfilIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :perfil, index: true, foreign_key: true
  end
end
