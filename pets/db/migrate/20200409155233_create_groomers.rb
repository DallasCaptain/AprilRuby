class CreateGroomers < ActiveRecord::Migration
  def change
    create_table :groomers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
