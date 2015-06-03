require 'open-uri'

class RecipesController < ApplicationController
  def index
    if params["ingredients"] != nil
      ingredients = params["ingredients"].join("+")
      call = "http://api.yummly.com/v1/api/recipes?_app_id=#{ENV['yummly_app_id']}&_app_key=#{ENV['yummly_key']}&q=#{ingredients}"
      @results = JSON.parse(Net::HTTP.get(URI.parse(call)))["matches"]
      
      @results.each do |recipe| 
        call_id = "http://api.yummly.com/v1/api/recipe/#{recipe["id"]}?_app_id=#{ENV['yummly_app_id']}&_app_key=#{ENV['yummly_key']}"
        new_results = JSON.parse(Net::HTTP.get(URI.parse(call_id)))["source"]["sourceRecipeUrl"]
      end
    end 

  end
end
