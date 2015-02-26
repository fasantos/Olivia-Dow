class ImagesController < ApplicationController
  before_filter :require_user, only: [:index, :new, :edit, :update, :destroy]
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    if @staff = Staff.find(params[:staff_id])
      choose_owner(@staff)
    elsif @article = Article.find(params[:article_id])
      choose_owner(@article)
    elsif @album = Album.find(params[:album_id])
      choose_owner(@album)
    elsif @performance = Performance.find(params[:performance_id])
      choose_owner(@performance)
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # this action, we'll get the id (primary key) of the image file we want to display, 
  # we'll pull it out of the database and then we'll send it to the browser and tell it to render it correctly
  def code_image
    @image_data = Image.find(params[:id])
    @image = @image_data.data
    send_data(@image, :type => @image_data.filetype, 
                     :filename => @image_data.filename, 
                     :disposition => 'inline')  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:adress, :data, :staff_id, :article_id, :album_id, :performance_id)
    end
    
    #chooses the model owner of that  
    def choose_owner(owner)
      @image = owner.comments.new(comment_params)
      respond_to do |format|
        if @image.save
          format.html { redirect_to owner, notice: 'Comment was successfully created.' }
          format.json { render json: [owner, @image], status: :created, location: [owner, @image] }
        else
          format.html { render :new }
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
    end
end
