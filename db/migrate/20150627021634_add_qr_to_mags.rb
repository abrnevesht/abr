class AddQrToMags < ActiveRecord::Migration
  def change
    add_column :mags, :QR, :string
  end
end
