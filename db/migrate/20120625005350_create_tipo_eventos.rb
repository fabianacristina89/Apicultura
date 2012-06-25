class CreateTipoEventos < ActiveRecord::Migration
  def change
    create_table :tipo_eventos do |t|
      t.string :nome
      t.string :periodo

      t.timestamps
    end
  end
end
