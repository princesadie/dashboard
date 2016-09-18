class UnitsController < ApplicationController
  def index
    @property = current_property
  end

  def new
    @property = current_property
    @unit = Unit.new
  end

  def create
    @property = current_property
    @unit = @property.units.build(unit_params)

    if @unit.save
      redirect_to property_units_path
    else
      redirect_to property_path
    end
  end

  def show
    @unit = current_unit
  end

  def edit
    @unit = current_unit
  end

  def update
    if current_unit.update
      redirect_to property_units_path
    else
      redirect_to edit_property_unit_path
    end
  end

  private

  def unit_params
    params.require(:unit).permit(
      :name,
      :size_sf,
      :monthly_rate,
      :rooms,
      :bathrooms
    )
  end

  def current_unit
    Unit.find(params[:id])
  end

  def current_property
    Property.find(params[:property_id])
  end
end
