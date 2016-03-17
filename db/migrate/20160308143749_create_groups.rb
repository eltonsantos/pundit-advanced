class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :description
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
