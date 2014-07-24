class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.string :audio_file
      t.string :description

      t.timestamps
    end
  end
end
