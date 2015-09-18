class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :type
      t.boolean :active
      t.date :end_date
      t.string :tag
      t.float :min_price
      t.float :max_price
      t.references :sub_category, index: true
      t.references :user, index: true
      t.references :city, index: true

      t.timestamps null: false
    end
    add_foreign_key :offers, :sub_categories
    add_foreign_key :offers, :users
    add_foreign_key :offers, :cities
  end
end
