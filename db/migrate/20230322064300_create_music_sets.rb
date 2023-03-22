class CreateMusicSets < ActiveRecord::Migration[7.0]
  def change
    create_table :music_sets do |t|
      t.string :name
      t.string :style
      t.integer :duration
      t.datetime :date

      t.timestamps
    end
  end
end
