class AddKlogoToMags < ActiveRecord::Migration
  def change
    add_column :mags, :klogo, :string
  end
end
