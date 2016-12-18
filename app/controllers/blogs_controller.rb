class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :create]
  def index
    if params[:category].blank?
    @blogs = Blog.all.order('created_at DESC ')
  else
    @category_id = Category.find_by(name: params[:category])
    @blogs = Blog.where(category_id: @category_id).order('created_at DESC')
  end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
    @categories = Category.all

  end

  def create
    @blog = Blog.new(params.require(:blog).permit(:title, :sub_title, :body, :link, :category_id, :thumbnail))

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end

  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(params[:blog].permit(:title, :sub_title, :body, :link, :category_id, :thumbnail))
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to @blog
  end

    private
      def blog_params
        params.require(:blog).permit(:title, :sub_title, :body, :link, :category_id, :thumbnail)
      end

end
