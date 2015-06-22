class Add2ColsToMags < ActiveRecord::Migration
  def change
    add_column :mags, :titr4, :string
    add_column :mags, :text4, :text   
  end
end
