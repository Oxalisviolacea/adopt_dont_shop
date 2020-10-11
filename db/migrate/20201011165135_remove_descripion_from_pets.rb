class RemoveDescripionFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :descripion, :string
  end
end
