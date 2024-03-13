class CreateBlogLivros < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_livros do |t|
      t.string :tittle
      t.string :author
      t.string :noteforthebook
      t.string :int
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
