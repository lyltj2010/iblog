class CreateTeches < ActiveRecord::Migration
  def change
    create_table :teches do |t|
      t.string :title
      t.text :content
      t.string :category

      t.timestamps null: false
    end
  end
end
