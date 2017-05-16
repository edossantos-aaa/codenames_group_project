class CreateHint1 < ActiveRecord::Migration[5.1]
  def change
    create_table(:hint1s) do |t|
      t.column(:name, :string)

      t.timestamps()
    end
  end
end
