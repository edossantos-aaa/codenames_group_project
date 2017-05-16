class CreateHint2 < ActiveRecord::Migration[5.1]
  def change
    create_table(:hint2s) do |t|
      t.column(:name, :string)

      t.timestamps()
    end
  end
end
