class CategoriesController < ApplicationController
  
  skip_before_filter :authorize, only: [:show]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.order("position")
  end

  def show
    @artworks = @category.artworks.order("position")
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_url, notice: 'Category successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      redirect_to @category, notice: 'Category successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'Category successfully destroyed.'
  end

  def sort
    params[:category].each_with_index do |id, index|
      Category.where(id: id).update_all(position: index+1)
    end
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name, :hidden, :position)
    end
end
