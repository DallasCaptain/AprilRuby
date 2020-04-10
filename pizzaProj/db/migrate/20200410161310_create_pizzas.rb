class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :size
      t.string :toppings
      t.string :sauce

      t.timestamps null: false
    end
  end
end
