class RenameAuthorToAuthor < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :Author, :author 
  end
end
