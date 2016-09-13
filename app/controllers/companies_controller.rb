class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company, notice: 'Company was successfully created.'
    else
      redirect_to "/"
    end
  end

  def show
    @company = current_company
  end

  def edit
    @company = current_company
  end

  def update

  end

  private

  def company_params
    params.require(:company).permit(
      :name,
      :address,
      :address_2,
      :city,
      :state,
      :zipcode,
      :logo
    )
  end

  def current_company
    Company.find(params[:id])
  end
end
