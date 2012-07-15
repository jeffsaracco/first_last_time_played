class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.date :first_time_date
      t.integer :first_time_show
      t.date :last_seen_date
      t.integer :last_seen_show
      t.integer :current_gap

      t.timestamps
    end
  end
end
