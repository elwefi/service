class Admin::GovernoratesController < ApplicationController
  before_action :set_admin_governorate, only: [:show, :edit, :update, :destroy]

  # GET /admin/governorates
  # GET /admin/governorates.json
  def index
    @admin_governorates = Admin::Governorate.all
  end

  # GET /admin/governorates/1
  # GET /admin/governorates/1.json
  def show
  end

  # GET /admin/governorates/new
  def new
    @admin_governorate = Admin::Governorate.new
  end

  # GET /admin/governorates/1/edit
  def edit
  end

  # POST /admin/governorates
  # POST /admin/governorates.json
  def create
    @admin_governorate = Admin::Governorate.new(admin_governorate_params)

    respond_to do |format|
      if @admin_governorate.save
        format.html { redirect_to @admin_governorate, notice: 'Governorate was successfully created.' }
        format.json { render :show, status: :created, location: @admin_governorate }
      else
        format.html { render :new }
        format.json { render json: @admin_governorate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/governorates/1
  # PATCH/PUT /admin/governorates/1.json
  def update
    respond_to do |format|
      if @admin_governorate.update(admin_governorate_params)
        format.html { redirect_to @admin_governorate, notice: 'Governorate was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_governorate }
      else
        format.html { render :edit }
        format.json { render json: @admin_governorate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/governorates/1
  # DELETE /admin/governorates/1.json
  def destroy
    @admin_governorate.destroy
    respond_to do |format|
      format.html { redirect_to admin_governorates_url, notice: 'Governorate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_governorate
      @admin_governorate = Admin::Governorate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_governorate_params
      params[:admin_governorate]
    end
end
