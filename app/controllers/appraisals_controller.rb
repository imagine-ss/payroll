class AppraisalsController < ApplicationController
  before_action :set_appraisal, only: %i[ show edit update destroy ]

  # GET /appraisals or /appraisals.json
  def index
    @appraisals = Appraisal.all
  end

  # GET /appraisals/1 or /appraisals/1.json
  def show
  end

  # GET /appraisals/new
  def new
    @appraisal = Appraisal.new
  end

  # GET /appraisals/1/edit
  def edit
  end

  # POST /appraisals or /appraisals.json
  def create
    @appraisal = Appraisal.new(appraisal_params)

    respond_to do |format|
      if @appraisal.save
        format.html { redirect_to appraisal_url(@appraisal), notice: "Appraisal was successfully created." }
        format.json { render :show, status: :created, location: @appraisal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appraisals/1 or /appraisals/1.json
  def update
    respond_to do |format|
      if @appraisal.update(appraisal_params)
        format.html { redirect_to appraisal_url(@appraisal), notice: "Appraisal was successfully updated." }
        format.json { render :show, status: :ok, location: @appraisal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appraisals/1 or /appraisals/1.json
  def destroy
    @appraisal.destroy

    respond_to do |format|
      format.html { redirect_to appraisals_url, notice: "Appraisal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appraisal
      @appraisal = Appraisal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appraisal_params
      params.require(:appraisal).permit(:employee_email, :collaboration, :work_ethic, :problem_solving, :decision_making, :communication).merge(user_id: current_user.id)
    end
end
