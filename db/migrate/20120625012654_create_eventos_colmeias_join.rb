class CreateEventosColmeiasJoin < ActiveRecord::Migration
  def up
  	create_table 'eventos_colmeias_join', :id => false do |t|
    t.column :evento_id, :integer
    t.column :colmeia_id, :integer
	end
  end

  def down
  	drop_table 'eventos_colmeias_join'
  end
end
