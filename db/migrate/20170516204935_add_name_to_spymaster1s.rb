class AddNameToSpymaster1s < ActiveRecord::Migration[5.1]
  def change
      add_column(:spymaster1s, :name, :string)
  end
end
