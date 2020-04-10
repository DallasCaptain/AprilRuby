class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :cuddlable, polymorphic: true, index: true
      t.string :name

      t.timestamps null: false
    end
  end
end
