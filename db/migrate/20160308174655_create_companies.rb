class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :description
      t.string :cnpj
      t.integer :capital

      t.timestamps null: false
    end
  end
end
