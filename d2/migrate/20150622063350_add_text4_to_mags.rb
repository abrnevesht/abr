class AddText4ToMags < ActiveRecord::Migration
  def change
    add_column :mags, :text4, :text
  end
end
