class CreateNightmares < ActiveRecord::Migration
  def change
    create_table :nightmares do |t|
      t.string :name
      t.string :expression
      t.text :description

      t.timestamps
    end
  end
end
