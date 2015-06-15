require 'open-uri'

class RecipesController < ApplicationController
  def index
    if params["ingredients"] != nil
      ingredients = params["ingredients"].join("+").gsub(" ", "%20")
      call = "http://api.yummly.com/v1/api/recipes?_app_id=#{ENV['yummly_app_id']}&_app_key=#{ENV['yummly_key']}&q=#{ingredients}"
      @results = JSON.parse(Net::HTTP.get(URI.parse(call)))["matches"]

      @recipe_info = []

      @results.each do |recipe|
        call_id = "http://api.yummly.com/v1/api/recipe/#{recipe["id"]}?_app_id=#{ENV['yummly_app_id']}&_app_key=#{ENV['yummly_key']}"
        links = JSON.parse(Net::HTTP.get(URI.parse(call_id)))["source"]["sourceRecipeUrl"]
        name = recipe["recipeName"]
        image = JSON.parse(Net::HTTP.get(URI.parse(call_id)))["images"][0]["imageUrlsBySize"]["360"]
        ingredients = recipe["ingredients"]
        @recipe_info << eachrecipe = {
            :name => name,
            :link => links,
            :image => image,
            :ingredient => ingredients
        }
      end
    end

    def not_bad
    end

  end
end
