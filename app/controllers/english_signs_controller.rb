class EnglishSignsController < ApplicationController
  before_action :set_english_sign, only: [:show, :edit, :update, :destroy]

  # GET /english_signs
  # GET /english_signs.json
  def index
    @english_signs = EnglishSign.all
  end

  # GET /english_signs/1
  # GET /english_signs/1.json
  def show
  end

  # GET /english_signs/new
  def new
    @english_sign = EnglishSign.new
  end

  # GET /english_signs/1/edit
  def edit
  end

  # POST /english_signs
  # POST /english_signs.json
  def create
    @english_sign = EnglishSign.new(english_sign_params)

    respond_to do |format|
      if @english_sign.save
        format.html { redirect_to @english_sign, notice: 'English sign was successfully created.' }
        format.json { render :show, status: :created, location: @english_sign }
      else
        format.html { render :new }
        format.json { render json: @english_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /english_signs/1
  # PATCH/PUT /english_signs/1.json
  def update
    respond_to do |format|
      if @english_sign.update(english_sign_params)
        format.html { redirect_to @english_sign, notice: 'English sign was successfully updated.' }
        format.json { render :show, status: :ok, location: @english_sign }
      else
        format.html { render :edit }
        format.json { render json: @english_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /english_signs/1
  # DELETE /english_signs/1.json
  def destroy
    @english_sign.destroy
    respond_to do |format|
      format.html { redirect_to english_signs_url, notice: 'English sign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english_sign
      @english_sign = EnglishSign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def english_sign_params
      params.require(:english_sign).permit(:phrase, :filename)
    end
end
