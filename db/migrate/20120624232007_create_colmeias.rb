class CreateColmeias < ActiveRecord::Migration
  def change
    create_table :colmeias do |t|
      t.references :area
      t.string :nome

      t.timestamps
    end
    add_index :colmeias, :area_id
  end
end
