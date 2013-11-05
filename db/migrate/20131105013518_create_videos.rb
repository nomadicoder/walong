class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :creator
      t.text :description

      t.timestamps
    end
  end
end
