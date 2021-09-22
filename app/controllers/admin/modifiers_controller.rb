class Admin::ModifiersController < ApplicationController
  before_action :set_admin_modifier, only: %i[ show edit update destroy ]

  # GET /admin/modifiers or /admin/modifiers.json
  def index
    @admin_modifiers = Admin::Modifier.all
  end

  # GET /admin/modifiers/1 or /admin/modifiers/1.json
  def show
  end

  # GET /admin/modifiers/new
  def new
    @admin_modifier = Admin::Modifier.new
  end

  # GET /admin/modifiers/1/edit
  def edit
  end

  # POST /admin/modifiers or /admin/modifiers.json
  def create
    @admin_modifier = Admin::Modifier.new(admin_modifier_params)

    respond_to do |format|
      if @admin_modifier.save
        format.html { redirect_to @admin_modifier, notice: "Modifier was successfully created." }
        format.json { render :show, status: :created, location: @admin_modifier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/modifiers/1 or /admin/modifiers/1.json
  def update
    respond_to do |format|
      if @admin_modifier.update(admin_modifier_params)
        format.html { redirect_to @admin_modifier, notice: "Modifier was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_modifier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/modifiers/1 or /admin/modifiers/1.json
  def destroy
    @admin_modifier.destroy
    respond_to do |format|
      format.html { redirect_to admin_modifiers_url, notice: "Modifier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_modifier
      @admin_modifier = Admin::Modifier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_modifier_params
      params.require(:admin_modifier).permit(:modifier_name)
    end
end
