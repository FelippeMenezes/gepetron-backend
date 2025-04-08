class CreateCommands < ActiveRecord::Migration[7.2]
  def change
    create_table :commands do |t|
      t.string :command_type
      t.text :content
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
