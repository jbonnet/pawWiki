class AddSlugToFragments < ActiveRecord::Migration
  def change
    add_column :fragments, :slug, :string
    add_index :fragments, :slug, unique: true
  end
end
