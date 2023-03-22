class CreateDjs < ActiveRecord::Migration[7.0]
  def change
    create_table :djs do |t|
      t.string :name
      t.string :dj_name
      t.string :genre
      t.integer :age

      t.timestamps
    end
  end
end
