class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :code
      t.references :delegation, index: true

      t.timestamps null: false
    end
    add_foreign_key :cities, :delegations
  end
end
