class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.date :data_prevista
      t.date :data_realizada
      t.string :status
      t.references :tipo_evento

      t.timestamps
    end
    add_index :eventos, :tipo_evento_id
  end
end
