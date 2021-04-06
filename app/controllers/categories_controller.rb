class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = current_user.categories
  end

  # GET /categories/1 or /categories/1.json
  def show
    @task = @category.tasks.build
  end

  # GET /categories/new
  def new
    @category = current_user.categories.build
    render :show_form
  end

  # GET /categories/1/edit
  def edit
    @category = current_user.categories.find(params[:id])
    render :show_form
  end

  # POST /categories or /categories.json
  def create
    @category = current_user.categories.build(category_params)

    if @category.save
      redirect_to @category, notice: "Category was successfully created."
      render :show, status: :created, location: @category
    else
      flash.now[:messages] = @category.errors.full_messages[0]
      render :show_form
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    @category = current_user.categories.find(params[:id])
    @category.update(category_params)
    if @category.save
      redirect_to @category, notice: "Category was successfully updated." and return
      render :show, status: :created, location: @category
    else
      flash.now[:messages] = @category.errors.full_messages[0]
      render :show_form
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: "Category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = current_user.categories.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:title, :description)
    end
end
