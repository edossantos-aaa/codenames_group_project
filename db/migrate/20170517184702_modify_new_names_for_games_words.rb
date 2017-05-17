class ModifyNewNamesForGamesWords < ActiveRecord::Migration[5.1]
  def change
    remove_column :games_words, :games_id, :integer
         add_column :games_words, :game_id, :integer
  end
end
