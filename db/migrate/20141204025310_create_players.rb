class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.references :team
      t.integer :age
      t.integer :speed
      t.integer :power

      t.timestamps
    end
  end
end
