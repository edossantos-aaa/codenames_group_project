class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table(:games) do |t|
      t.column(:finished, :boolean)
      t.timestamps
  end

    create_table(:hints) do |t|
      t.column(:name, :string)
      t.timestamps
  end

    create_table(:games_hints) do |t|
      t.column(:hints_id, :integer)
      t.column(:games_id, :integer)
      t.timestamps
  end

    create_table(:games_words) do |t|
      t.column(:games_id, :integer)
      t.column(:words_id, :integer)
      t.timestamps
  end

    create_table(:words) do |t|
      t.column(:name, :string)
      t.timestamps
    end
  end
end
