class AddTitr4ToMags < ActiveRecord::Migration
  def change
    add_column :mags, :titr4, :string
  end
end
