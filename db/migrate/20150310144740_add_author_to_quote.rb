class AddAuthorToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :author, :string, default: "author unknown"
  end
end
