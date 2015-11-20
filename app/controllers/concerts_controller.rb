class ConcertsController < ApplicationController

  def index
    @today_concerts = Concert.today_concerts
    @later_this_month = Concert.later_this_month
  end

  def show
    @concert = Concert.find_by(id: params[:id])
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)

    if @concert.save
      redirect_to action: "index", controller: "concerts"
    else
      render "new"
    end

  end

  private

  def concert_params
    params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end
end
