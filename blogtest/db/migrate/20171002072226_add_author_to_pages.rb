class AddAuthorToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :author, :string
  end
end
