class V1::PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /v1/people
  def index
    @people = Person.all

    render json: @people
  end

  # GET /v1/people/1
  def show
    render json: @person
  end

  # POST /v1/people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :aliases)
    end
end
