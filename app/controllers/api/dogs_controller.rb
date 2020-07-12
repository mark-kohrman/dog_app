class Api::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @dog = Dog.new(
      breed: params[:breed],
      color: params[:color],
      price: params[:price],
      age: params[:age]
    )
    @dog.save
    render 'show.json.jb'
  end
end
