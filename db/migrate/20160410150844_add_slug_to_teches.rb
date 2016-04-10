class AddSlugToTeches < ActiveRecord::Migration
  def change
    add_column :teches, :slug, :string
    add_index :teches, :slug, unique: true
  end
end
