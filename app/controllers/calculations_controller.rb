class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @input = params[:id].to_i
    render("square_root.html.erb")
  end

  def random
    @start_num = params[:num_1].to_i + 1
    @fin_num = params[:num_2].to_i
    @answer = rand(@fin_num - @start_num) +@start_num
    render("random.html.erb")
  end

  def payment
    @periods = (params[:term].to_i)*12
    @principal = params[:amount].to_i
    @rate = (params[:rate].to_i)*(0.0001)
    @payment = (((@rate/12) *@principal)/(1 - (1 + (@rate/12))**(-@periods)))
    render("payment.html.erb")

  end

end
