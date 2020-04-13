class PizzasController < ApplicationController
  layout 'pizza', only: [:index, :show, :new]
  

  def index
    title
    @pizzas = Pizza.all
    
    
  end

  def new
    title
    @pizza = Pizza.new
  end

  def create
 
    @pizza = Pizza.create(pizza_params)
    redirect_to '/pizzas'
  end

  def show

  end

  def edit
    
  end

  def update
  end

  def destroy
  end

  private 
  def pizza_params
    params.require(:pizza).permit(:toppings, :sauce)
  end

  def title
    @title = "Best Pizza on earth"
  end


end
