class CreateGroupFunctionalities < ActiveRecord::Migration
  def change
    create_table :group_functionalities do |t|
      t.references :group, index: true, foreign_key: true
      t.references :functionality, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
