class CreateGovernorates < ActiveRecord::Migration
  def change
    create_table :governorates do |t|
      t.string :name
      t.string :code

      t.timestamps null: false
    end
  end
end
