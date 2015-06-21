class CreateMags < ActiveRecord::Migration
  def change
    create_table :mags do |t|
      t.string :name
      t.datetime :date
      t.string :logo
      t.string :titr1
      t.text :text1
      t.string :titr2
      t.text :text2
      t.string :titr3
      t.text :text3
      t.string :titr4
      t.text :text4
      t.string :modir
      t.string :sardabir
      t.string :email

      t.timestamps null: false
    end
  end
end
