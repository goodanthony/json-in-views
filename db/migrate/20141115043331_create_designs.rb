class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
