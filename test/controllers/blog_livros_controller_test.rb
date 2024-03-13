require "test_helper"

class BlogLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_livro = blog_livros(:one)
  end

  test "should get index" do
    get blog_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_livro_url
    assert_response :success
  end

  test "should create blog_livro" do
    assert_difference("BlogLivro.count") do
      post blog_livros_url, params: { blog_livro: { author: @blog_livro.author, description: @blog_livro.description, int: @blog_livro.int, noteforthebook: @blog_livro.noteforthebook, text: @blog_livro.text, tittle: @blog_livro.tittle } }
    end

    assert_redirected_to blog_livro_url(BlogLivro.last)
  end

  test "should show blog_livro" do
    get blog_livro_url(@blog_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_livro_url(@blog_livro)
    assert_response :success
  end

  test "should update blog_livro" do
    patch blog_livro_url(@blog_livro), params: { blog_livro: { author: @blog_livro.author, description: @blog_livro.description, int: @blog_livro.int, noteforthebook: @blog_livro.noteforthebook, text: @blog_livro.text, tittle: @blog_livro.tittle } }
    assert_redirected_to blog_livro_url(@blog_livro)
  end

  test "should destroy blog_livro" do
    assert_difference("BlogLivro.count", -1) do
      delete blog_livro_url(@blog_livro)
    end

    assert_redirected_to blog_livros_url
  end
end
