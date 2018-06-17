class CreateGamesPlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :games_platforms, id: false do |t|
      t.references :platform, foreign_key: true
      t.references :game, foreign_key: true
    end
  end
end
