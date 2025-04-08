class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :avatar_id

      t.timestamps
    end
  end
end
