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

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(
      breed: params[:breed] || @dog.breed,
      color: params[:color] || @dog.color,
      price: params[:price] || @dog.price,
      age: params[:age] || @dog.age
    )
    @dog.save
    render 'show.json.jb'
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    render json: {message: "Your dog is not being destroyed, we're taking him to a farm upstate"}
  end
end
