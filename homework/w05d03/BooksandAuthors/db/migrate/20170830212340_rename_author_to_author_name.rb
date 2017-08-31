class RenameAuthorToAuthorName < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :author, :author_name
  end
end
