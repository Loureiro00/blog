require "application_system_test_case"

class BlogLivrosTest < ApplicationSystemTestCase
  setup do
    @blog_livro = blog_livros(:one)
  end

  test "visiting the index" do
    visit blog_livros_url
    assert_selector "h1", text: "Blog livros"
  end

  test "should create blog livro" do
    visit blog_livros_url
    click_on "New blog livro"

    fill_in "Author", with: @blog_livro.author
    fill_in "Description", with: @blog_livro.description
    fill_in "Int", with: @blog_livro.int
    fill_in "Noteforthebook", with: @blog_livro.noteforthebook
    fill_in "Text", with: @blog_livro.text
    fill_in "Tittle", with: @blog_livro.tittle
    click_on "Create Blog livro"

    assert_text "Blog livro was successfully created"
    click_on "Back"
  end

  test "should update Blog livro" do
    visit blog_livro_url(@blog_livro)
    click_on "Edit this blog livro", match: :first

    fill_in "Author", with: @blog_livro.author
    fill_in "Description", with: @blog_livro.description
    fill_in "Int", with: @blog_livro.int
    fill_in "Noteforthebook", with: @blog_livro.noteforthebook
    fill_in "Text", with: @blog_livro.text
    fill_in "Tittle", with: @blog_livro.tittle
    click_on "Update Blog livro"

    assert_text "Blog livro was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog livro" do
    visit blog_livro_url(@blog_livro)
    click_on "Destroy this blog livro", match: :first

    assert_text "Blog livro was successfully destroyed"
  end
end
