class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :animal_type
      t.string :name
      t.float :age
      t.float :weight

      t.timestamps
    end
  end
end
