class ContinentsPopulationsController < ApplicationController
  before_action :set_continents_population, only: %i[ show edit update destroy ]

  # GET /continents_populations or /continents_populations.json
  def index
    @continents_populations = ContinentsPopulation.all
  end

  # GET /continents_populations/1 or /continents_populations/1.json
  def show
  end

  # GET /continents_populations/new
  def new
    @continents_population = ContinentsPopulation.new
  end

  # GET /continents_populations/1/edit
  def edit
  end

  # POST /continents_populations or /continents_populations.json
  def create
    @continents_population = ContinentsPopulation.new(continents_population_params)

    respond_to do |format|
      if @continents_population.save
        format.html { redirect_to @continents_population, notice: "Continents population was successfully created." }
        format.json { render :show, status: :created, location: @continents_population }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @continents_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /continents_populations/1 or /continents_populations/1.json
  def update
    respond_to do |format|
      if @continents_population.update(continents_population_params)
        format.html { redirect_to @continents_population, notice: "Continents population was successfully updated." }
        format.json { render :show, status: :ok, location: @continents_population }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @continents_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /continents_populations/1 or /continents_populations/1.json
  def destroy
    @continents_population.destroy
    respond_to do |format|
      format.html { redirect_to continents_populations_url, notice: "Continents population was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def generate_report
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Report",
        template: "continents_populations/generate_report.html.erb",
        layout: 'pdf.html'
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_continents_population
      @continents_population = ContinentsPopulation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def continents_population_params
      params.require(:continents_population).permit(:name, :population, :contribution)
    end
end
