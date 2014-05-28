class AddMoreLanguagesToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :arabic, :text
    add_column :snippets, :filipino, :text
    add_column :snippets, :haitian_creole, :text
    add_column :snippets, :maltese, :text
    add_column :snippets, :yiddish, :text
  end
end
