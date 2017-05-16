class CreateSpymaster1 < ActiveRecord::Migration[5.1]
    def change
      create_table(:spymaster1s) do |t|
      t.column(:in_game, :boolean)

      t.timestamps()
    end
  end
end
