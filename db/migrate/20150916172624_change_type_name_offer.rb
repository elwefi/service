class ChangeTypeNameOffer < ActiveRecord::Migration
  def change
  	rename_column :offers, :type, :kind
  end
end
