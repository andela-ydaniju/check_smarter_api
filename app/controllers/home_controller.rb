# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    render json: { message: "Welcome home" }
  end
end
