class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
    
    
  end

  def new
  end

  def create
 
    @pizza = Pizza.create(pizza_params)
    redirect_to '/pizzas'
  end

  def show

  end

  def edit
    redirect_to "/pizzas"
  end

  def update
  end

  def destroy
  end

  private 
  def pizza_params
    params.require(:pizza).permit(:toppings, :sauce)
  end


end
