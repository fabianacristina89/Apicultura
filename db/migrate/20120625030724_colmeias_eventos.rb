class ColmeiasEventos < ActiveRecord::Migration
  def up
  	create_table 'colmeias_eventos', :id => false do |t|
    t.column :evento_id, :integer
    t.column :colmeia_id, :integer
	end
  end

  def down
  	drop_table 'colmeias_eventos'
  end
end
