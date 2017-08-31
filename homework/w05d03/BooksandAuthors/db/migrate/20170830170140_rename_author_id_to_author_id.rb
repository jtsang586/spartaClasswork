class RenameAuthorIdToAuthorId < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :Author_id, :author_id
  end
end
