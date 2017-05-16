class CreateLogin < ActiveRecord::Migration[5.1]
    def change
      create_table(:logins) do |t|
      t.column(:firstname, :string)
      t.column(:lastname, :string)

      t.timestamps()
    end
  end
end
