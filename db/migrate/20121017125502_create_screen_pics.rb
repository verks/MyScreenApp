class CreateScreenPics < ActiveRecord::Migration
  def change
    create_table :screen_pics do |t|
      t.string :url

      t.timestamps
    end
  end
end
