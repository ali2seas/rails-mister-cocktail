class AddUniqueIndexToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :unique_index, :integer
  end
end
