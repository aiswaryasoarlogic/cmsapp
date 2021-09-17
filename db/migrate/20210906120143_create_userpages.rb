class CreateUserpages < ActiveRecord::Migration[6.1]
  def change
    create_table :userpages do |t|
      t.integer :userid
      t.string :title
      t.string :pagetitle
      t.text :description
      t.text :keywords
      t.text :metadescription

      t.timestamps
    end
  end
end
