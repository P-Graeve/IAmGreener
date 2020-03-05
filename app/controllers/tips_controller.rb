class TipsController < ApplicationController
  def show
    @tip = Tip.find(params[:id])
  end
end
