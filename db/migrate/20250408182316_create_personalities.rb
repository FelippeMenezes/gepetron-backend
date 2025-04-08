class CreatePersonalities < ActiveRecord::Migration[7.2]
  def change
    create_table :personalities do |t|
      t.string :name
      t.text :description
      t.string :mood

      t.timestamps
    end
  end
end
