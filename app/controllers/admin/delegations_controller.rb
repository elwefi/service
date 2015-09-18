class Admin::DelegationsController < ApplicationController
  before_action :set_admin_delegation, only: [:show, :edit, :update, :destroy]

  # GET /admin/delegations
  # GET /admin/delegations.json
  def index
    @admin_delegations = Admin::Delegation.all
  end

  # GET /admin/delegations/1
  # GET /admin/delegations/1.json
  def show
  end

  # GET /admin/delegations/new
  def new
    @admin_delegation = Admin::Delegation.new
  end

  # GET /admin/delegations/1/edit
  def edit
  end

  # POST /admin/delegations
  # POST /admin/delegations.json
  def create
    @admin_delegation = Admin::Delegation.new(admin_delegation_params)

    respond_to do |format|
      if @admin_delegation.save
        format.html { redirect_to @admin_delegation, notice: 'Delegation was successfully created.' }
        format.json { render :show, status: :created, location: @admin_delegation }
      else
        format.html { render :new }
        format.json { render json: @admin_delegation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/delegations/1
  # PATCH/PUT /admin/delegations/1.json
  def update
    respond_to do |format|
      if @admin_delegation.update(admin_delegation_params)
        format.html { redirect_to @admin_delegation, notice: 'Delegation was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_delegation }
      else
        format.html { render :edit }
        format.json { render json: @admin_delegation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/delegations/1
  # DELETE /admin/delegations/1.json
  def destroy
    @admin_delegation.destroy
    respond_to do |format|
      format.html { redirect_to admin_delegations_url, notice: 'Delegation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_delegation
      @admin_delegation = Admin::Delegation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_delegation_params
      params[:admin_delegation]
    end
end
