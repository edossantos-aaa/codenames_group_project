class CreateGamesHints < ActiveRecord::Migration[5.1]
  def change
    create_table(:games_hints) do |t|
      t.column(:game_id, :int)
      t.column(:hint_id, :int)

      t.timestamps()
    end
  end
end
