# Add code from Readme
class Bird < ApplicationRecord
end

Rails.application.routes.draw do
  get '/birds' => 'birds#index'
end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end
end