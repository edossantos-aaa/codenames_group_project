class CreateGame < ActiveRecord::Migration[5.1]
    def change
      create_table(:games) do |t|
      t.column(:player1_id, :integer)
      t.column(:player2_id, :integer)
      t.column(:spymaster1_id, :integer)
      t.column(:spymaster2_id, :integer)
      t.column(:word_id, :integer)
      t.column(:login_id, :integer)
      t.timestamps()
    end
  end
end
