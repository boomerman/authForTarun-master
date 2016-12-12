class CircularsController < ApplicationController
  before_action :set_circular, only: [:show, :edit, :update, :destroy]
    before_action :teachers_only

  # GET /circulars
  # GET /circulars.json
  def index
    @circulars = Circular.where(user_id: current_user)
  end

  # GET /circulars/1
  # GET /circulars/1.json
  def show
  end

  # GET /circulars/new
  def new
    @circular = current_user.circulars.build
  end

  # GET /circulars/1/edit
  def edit
  end

  # POST /circulars
  # POST /circulars.json
  def create
    @circular = current_user.circulars.build(circular_params)

    respond_to do |format|
      if @circular.save
        format.html { redirect_to @circular, notice: 'Circular was successfully created.' }
        format.json { render :show, status: :created, location: @circular }
      else
        format.html { render :new }
        format.json { render json: @circular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circulars/1
  # PATCH/PUT /circulars/1.json
  def update
    respond_to do |format|
      if @circular.update(circular_params)
        format.html { redirect_to @circular, notice: 'Circular was successfully updated.' }
        format.json { render :show, status: :ok, location: @circular }
      else
        format.html { render :edit }
        format.json { render json: @circular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circulars/1
  # DELETE /circulars/1.json
  def destroy
    @circular.destroy
    respond_to do |format|
      format.html { redirect_to circulars_url, notice: 'Circular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circular
      @circular = Circular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circular_params
      params.require(:circular).permit(:subject, :year, :branch, :group, :atach)
    end
end
private
  def teachers_only
    unless current_user.teacher? || current_user.admin?
      redirect_to root_path, :alert => "Access denied, only for teachers."
    end
  end

