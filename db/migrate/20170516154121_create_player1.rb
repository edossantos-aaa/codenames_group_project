class CreatePlayer1 < ActiveRecord::Migration[5.1]
    def change
      create_table(:player1s) do |t|
      t.column(:in_game, :boolean)

      t.timestamps()
    end
  end
end
