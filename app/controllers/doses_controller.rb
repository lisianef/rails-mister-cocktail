class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:ingredient_id])
    cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(cocktail.id) # , :notice => "Your ingredient has been deleted"
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
