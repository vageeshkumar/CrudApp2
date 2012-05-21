class LinesController < ApplicationController
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    @line = TrainLine.new
  end
  
  def edit
    @line = TrainLine.find_by_id(params[:id])    
  end
  
  def create
    @new_line = TrainLine.new
    @new_line.name = params[:train_line][:name]
    @new_line.frequency = params[:train_line][:frequency]
    @new_line.save
    flash[:notice] = "New train line was added"
    redirect_to train_lines_url        
  end
  
  def update
    @line = TrainLine.find_by_id(params[:id])
    @line.name = params[:train_line][:name]
    @line.frequency = params[:train_line][:frequency]
    @line.save
    redirect_to train_lines_url
  end
  
  def destroy
    line = TrainLine.find_by_id(params[:id])
    line.destroy
    redirect_to train_lines_url    
  end
  
  def couple
    
  end
  
  def individual
    @line = TrainLine.find_by_id(params[:id])
  end
  
end