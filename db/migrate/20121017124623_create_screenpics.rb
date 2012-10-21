class CreateScreenpics < ActiveRecord::Migration
  def change
    create_table :screenpics do |t|
      t.string :url

      t.timestamps
    end
  end
end
