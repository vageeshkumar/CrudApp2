class LinesController < ApplicationController
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    @line = TrainLine.new
  end
  
  def create
    @new_line = TrainLine.new
    @new_line.name = params[:train_line][:name]
    @new_line.frequency = params[:train_line][:frequency]
    @new_line.save
    redirect_to train_lines_url    
  end
  
  def couple
    
  end
  
  def individual
    @line = TrainLine.find_by_name(params[:id])
  end
  
end