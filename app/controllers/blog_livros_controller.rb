class BlogLivrosController < ApplicationController
  before_action :set_blog_livro, only: %i[ show edit update destroy ]

  # GET /blog_livros or /blog_livros.json
  def index
    @blog_livros = BlogLivro.all
  end

  # GET /blog_livros/1 or /blog_livros/1.json
  def show
  end

  # GET /blog_livros/new
  def new
    @blog_livro = BlogLivro.new
  end

  # GET /blog_livros/1/edit
  def edit
  end

  # POST /blog_livros or /blog_livros.json
  def create
    @blog_livro = BlogLivro.new(blog_livro_params)

    respond_to do |format|
      if @blog_livro.save
        format.html { redirect_to blog_livro_url(@blog_livro), notice: "Blog livro was successfully created." }
        format.json { render :show, status: :created, location: @blog_livro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_livros/1 or /blog_livros/1.json
  def update
    respond_to do |format|
      if @blog_livro.update(blog_livro_params)
        format.html { redirect_to blog_livro_url(@blog_livro), notice: "Blog livro was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_livro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_livros/1 or /blog_livros/1.json
  def destroy
    @blog_livro.destroy!

    respond_to do |format|
      format.html { redirect_to blog_livros_url, notice: "Blog livro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_livro
      @blog_livro = BlogLivro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_livro_params
      params.require(:blog_livro).permit(:tittle, :author, :noteforthebook, :int, :description, :text)
    end
end
