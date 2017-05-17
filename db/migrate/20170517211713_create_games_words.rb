class CreateGamesWords < ActiveRecord::Migration[5.1]
  def change
    create_table(:games_words) do |t|
      t.column(:game_id, :int)
      t.column(:word_id, :int)

      t.timestamps()
    end
  end
end
