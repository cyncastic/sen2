class ActiveHeadersController < ApplicationController
  before_action :set_active_header, only: [:show, :edit, :update, :destroy]

  # GET /active_headers
  def index
    @active_headers = ActiveHeader.all
  end

  # GET /active_headers/1
  def show
  end

  # GET /active_headers/new
  def new
    @active_header = ActiveHeader.new
    @headers = Header.all
  end

  # GET /active_headers/1/edit
  def edit
    @headers = Header.all
  end

  # POST /active_headers
  def create
    @active_header = ActiveHeader.new(active_header_params)

    if @active_header.save
      redirect_to @active_header, notice: 'Active header was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /active_headers/1
  def update
    if @active_header.update(active_header_params)
      redirect_to admin_url, notice: 'Active header was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /active_headers/1
  def destroy
    @active_header.destroy
    redirect_to active_headers_url, notice: 'Active header was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_header
      @active_header = ActiveHeader.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def active_header_params
      params.require(:active_header).permit(:header_id)
    end
end
