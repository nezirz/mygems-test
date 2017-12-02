class HomeController < ApplicationController

  def index
    @leet = leet_params[:toleet].LeetIt unless leet_params.nil?
    @random = leet_params[:toleet].random_cases unless leet_params.nil?
  end

  private
  def leet_params
    unless params[:someparam].nil?
      params.require(:someparam).permit(:toleet)
    end
  end
end
