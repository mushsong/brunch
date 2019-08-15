class MingsController < ApplicationController
  before_action :set_ming, only: [:show, :edit, :update, :destroy]

  # GET /mings
  # GET /mings.json
  def index
    @mings = Ming.all
  end

  # GET /mings/1
  # GET /mings/1.json
  def show
  end

  # GET /mings/new
  def new
    @ming = Ming.new
  end

  # GET /mings/1/edit
  def edit
  end

  # POST /mings
  # POST /mings.json
  def create
    @ming = Ming.new(ming_params)

    respond_to do |format|
      if @ming.save
        format.html { redirect_to @ming, notice: 'Ming was successfully created.' }
        format.json { render :show, status: :created, location: @ming }
      else
        format.html { render :new }
        format.json { render json: @ming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mings/1
  # PATCH/PUT /mings/1.json
  def update
    respond_to do |format|
      if @ming.update(ming_params)
        format.html { redirect_to @ming, notice: 'Ming was successfully updated.' }
        format.json { render :show, status: :ok, location: @ming }
      else
        format.html { render :edit }
        format.json { render json: @ming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mings/1
  # DELETE /mings/1.json
  def destroy
    @ming.destroy
    respond_to do |format|
      format.html { redirect_to mings_url, notice: 'Ming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ming
      @ming = Ming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ming_params
      params.require(:ming).permit(:title, :content)
    end
end
