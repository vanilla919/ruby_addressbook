class IntrosController < ApplicationController
  before_action :set_intro, only: [:show, :edit, :update, :destroy]

  # GET /intros
  # GET /intros.json
  def index
    @intros = Intro.all
  end

  # GET /intros/1
  # GET /intros/1.json
  def show
  end

  # GET /intros/new
  def new
    @intro = Intro.new
  end

  # GET /intros/1/edit
  def edit
  end

  # POST /intros
  # POST /intros.json
  def create
    @intro = Intro.new(intro_params)

    respond_to do |format|
      if @intro.save
        format.html { redirect_to @intro, notice: 'Intro was successfully created.' }
        format.json { render :show, status: :created, location: @intro }
      else
        format.html { render :new }
        format.json { render json: @intro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intros/1
  # PATCH/PUT /intros/1.json
  def update
    respond_to do |format|
      if @intro.update(intro_params)
        format.html { redirect_to @intro, notice: 'Intro was successfully updated.' }
        format.json { render :show, status: :ok, location: @intro }
      else
        format.html { render :edit }
        format.json { render json: @intro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intros/1
  # DELETE /intros/1.json
  def destroy
    @intro.destroy
    respond_to do |format|
      format.html { redirect_to intros_url, notice: 'Intro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intro
      @intro = Intro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intro_params
      params.require(:intro).permit(:name, :sex, :tel, :email, :position, :info, :photo)
    end
end
