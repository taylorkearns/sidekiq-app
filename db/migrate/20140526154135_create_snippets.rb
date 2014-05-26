class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :english
      t.text :icelandic

      t.timestamps
    end
  end
end
