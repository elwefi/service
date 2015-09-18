class CreateDelegations < ActiveRecord::Migration
  def change
    create_table :delegations do |t|
      t.string :name
      t.string :code
      t.references :governorate, index: true

      t.timestamps null: false
    end
    add_foreign_key :delegations, :governorates
  end
end
