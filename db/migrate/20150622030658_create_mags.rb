class CreateMags < ActiveRecord::Migration
  def change
    create_table :mags do |t|
      t.string :name
      t.string :descrip
      t.string :titr1
      t.text :text1
      t.string :titr2
      t.text :text2
      t.string :titr3
      t.text :text3
      t.string :logo
      t.datetime :data
      t.string :email
      t.string :modir
      t.string :sardabir

      t.timestamps null: false
    end
  end
end
