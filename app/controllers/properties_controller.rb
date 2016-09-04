class PropertiesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    @user = current_user
    @property = @user.properties.build

    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      redirect_to "/"
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(
      :name,
      :address,
      :address_2,
      :city,
      :state,
      :zipcode
    )
  end
end
