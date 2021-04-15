class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :coffee_name 
      t.string :coffee_origin
      t.integer :amount 
      t.integer :price 
      t.date :date
      
      t.timestamps
    end
  end
end
