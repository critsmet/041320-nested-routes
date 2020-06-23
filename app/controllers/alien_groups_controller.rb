class AlienGroupsController < ApplicationController
  before_action :set_alien_group, only: [:show, :edit, :update, :destroy]

  # GET /alien_groups
  # GET /alien_groups.json
  def index
    if params[:planet_id]
      @planet = Planet.find_by(id: params[:planet_id])
      @alien_groups = @planet.alien_groups
    else
      @alien_groups = AlienGroup.all
    end
  end

  # GET /alien_groups/1
  # GET /alien_groups/1.json
  def show
  end

  # GET /alien_groups/new
  def new
    if params[:planet_id]
      @planet = Planet.find_by(id: params[:planet_id])
    end
    @alien_group = AlienGroup.new
  end

  # GET /alien_groups/1/edit
  def edit
  end

  # POST /alien_groups
  # POST /alien_groups.json
  def create
    @alien_group = AlienGroup.new(alien_group_params)

    if @alien_group.save
      redirect_to params[:planet_id] ? planet_alien_group_path(params[:planet_id], @alien_group) : @alien_group
    else
      render :new
    end
  end

  # PATCH/PUT /alien_groups/1
  # PATCH/PUT /alien_groups/1.json
  def update
    respond_to do |format|
      if @alien_group.update(alien_group_params)
        format.html { redirect_to @alien_group, notice: 'Alien group was successfully updated.' }
        format.json { render :show, status: :ok, location: @alien_group }
      else
        format.html { render :edit }
        format.json { render json: @alien_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alien_groups/1
  # DELETE /alien_groups/1.json
  def destroy
    @alien_group.destroy
    respond_to do |format|
      format.html { redirect_to alien_groups_url, notice: 'Alien group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alien_group
      @alien_group = AlienGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alien_group_params
      params.require(:alien_group).permit(:name, :desription, :planet_id)
    end
end
