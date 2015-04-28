class CreateYourDb < ActiveRecord::Migration
  def up
    create_table 'games' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      t.timestamps
    end
  end

  def down
    drop_table 'games'
  end
end
