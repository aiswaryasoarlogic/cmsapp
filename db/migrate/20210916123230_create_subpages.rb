class CreateSubpages < ActiveRecord::Migration[6.1]
  def change
    create_table :subpages do |t|
      t.string :title
      t.string :keywords
      t.integer :pageid
      t.text :metadescription
      t.text :description
      t.string :pagetitle

      t.timestamps
    end
  end
end
