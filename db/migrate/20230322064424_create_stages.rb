class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages do |t|
      t.references :dj, null: false, foreign_key: true
      t.references :music_set, null: false, foreign_key: true

      t.timestamps
    end
  end
end
