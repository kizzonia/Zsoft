class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @about = About.new(about_params)
      if @about.save
       redirect_to @about
      else
     render 'new'
    end
  end


  def update

      if @about.update(params[:about].permit(:name, :portfolio, :website, :email, :signature, :contact, :hobby, :thumbnail))
      redirect_to root_path
      else
        render 'edit'
      end

  end

  # DELETE /abouts/1
  # DELETE /abouts/1.json
  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_url, notice: 'About was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:name, :portfolio, :website, :email, :signature, :contact, :hobby, :thumbnail)
    end
end
