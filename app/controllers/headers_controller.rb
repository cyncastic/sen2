class HeadersController < ApplicationController
  before_action :set_header, only: [:show, :edit, :update, :destroy]

  def index
    @headers = Header.all
  end

  def new
    @header = Header.new
  end

  def edit
  end

  def create
    @header = Header.new(header_params)

    if @header.save
      redirect_to headers_url, notice: 'Header was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @header.update(header_params)
      redirect_to headers_url, notice: 'Header was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @header.destroy
    redirect_to headers_url, notice: 'Header was successfully destroyed.'
  end

  private
    def set_header
      @header = Header.find(params[:id])
    end

    def header_params
      params.require(:header).permit(:image, :active)
    end
end
