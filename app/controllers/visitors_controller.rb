class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(params.require(:visitor).permit(:email))
    if @visitor.save
      redirect_to visitor_path(@visitor.id)
    else
      render :new
    end
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def thanks
    @visitor = Visitor.find(params[:id])
  end



end
