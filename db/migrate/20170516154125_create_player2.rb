class CreatePlayer2 < ActiveRecord::Migration[5.1]
    def change
      create_table(:player2s) do |t|
      t.column(:in_game, :boolean)

      t.timestamps()
    end
  end
end
