class CreateBuffers < ActiveRecord::Migration
  def change
    create_table :buffers do |t|
      t.string :name
      t.string :episode_file
      t.string :description

      t.timestamps
    end
  end
end
