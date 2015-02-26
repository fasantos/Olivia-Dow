class ParagrafsController < ApplicationController
  before_filter :require_user
  before_action :set_paragraf, only: [:show, :edit, :update, :destroy]

  # GET /paragrafs
  # GET /paragrafs.json
  def index
    @paragrafs = Paragraf.all
  end

  # GET /paragrafs/1
  # GET /paragrafs/1.json
  def show
  end

  # GET /paragrafs/new
  def new
    @paragraf = Paragraf.new
  end

  # GET /paragrafs/1/edit
  def edit
  end

  # POST /paragrafs
  # POST /paragrafs.json
  def create
    @staff = Staff.find(params[:staff_id])
    if @staff
      @paragraf = @staff.comments.new(comment_params)
      respond_to do |format|
        if @paragraf.save
          format.html { redirect_to @staff, notice: 'Paragraf was successfully created.' }
          format.json { render json: [@staff, @paragraf], status: :created, location: [@staff, @paragraf] }
        else
          format.html { render :new }
          format.json { render json: @paragraf.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = "Sorry staff not found"
      redirect_to staff_path
    end 
  end

  # PATCH/PUT /paragrafs/1
  # PATCH/PUT /paragrafs/1.json
  def update
    respond_to do |format|
      if @paragraf.update(paragraf_params)
        format.html { redirect_to @paragraf, notice: 'Paragraf was successfully updated.' }
        format.json { render :show, status: :ok, location: @paragraf }
      else
        format.html { render :edit }
        format.json { render json: @paragraf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragrafs/1
  # DELETE /paragrafs/1.json
  def destroy
    @paragraf.destroy
    respond_to do |format|
      format.html { redirect_to paragrafs_url, notice: 'Paragraf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paragraf
      @paragraf = Paragraf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paragraf_params
      params.require(:paragraf).permit(:title, :body, :staff_id, :article_id, :act_id)
    end

    #chooses the model owner of that paragraf 
    def choose_owner(owner)
      @paragraf = owner.comments.new(comment_params)
      respond_to do |format|
        if @paragraf.save
          format.html { redirect_to owner, notice: 'Comment was successfully created.' }
          format.json { render json: [owner, @paragraf], status: :created, location: [owner, @paragraf] }
        else
          format.html { render :new }
          format.json { render json: @paragraf.errors, status: :unprocessable_entity }
        end
      end
    end
end
