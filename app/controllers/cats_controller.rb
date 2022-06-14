require 'open-uri'
require 'json'
class CatsController < ApplicationController

  def display_cat_api
    @url = 'https://api.thecatapi.com/v1/images/search?breed_id=beng'
    @response = HTTParty.get(@url, headers: {'x-api-key' => ENV['CAT_API_KEY']})
    @cat_json = JSON.parse(@response.body)

    #picture
    @cat_img = @cat_json[0]['url']

    #breed
    @cat_breed = @cat_json[0]['breeds'][0]['name']

    #descriptions
    @cat_temperament = @cat_json[0]['breeds'][0]['temperament']
    @cat_desc = @cat_json[0]['breeds'][0]['description']

    #stats & info
    @cat_origin = @cat_json[0]['breeds'][0]['origin']
    @cat_weight = @cat_json[0]['breeds'][0]['weight']['metric'] # 5-7kg
    @cat_life_span = @cat_json[0]['breeds'][0]['life_span'] # 12-15 years
    @cat_affection = @cat_json[0]['breeds'][0]['affection_level'] # /5
    @cat_child_friendly = @cat_json[0]['breeds'][0]['child_friendly'] # /5
    @cat_intelligence = @cat_json[0]['breeds'][0]['intelligence'] # /5
    @cat_adaptability = @cat_json[0]['breeds'][0]['adaptability'] # /5
    @dog_friendliness = @cat_json[0]['breeds'][0]['dog_friendly'] # /5


    #urls
    @cfa_url = @cat_json[0]['breeds'][0]['cfa_url']
    @vetstreet_url = @cat_json[0]['breeds'][0]['vetstreet_url']
    @vcahospitals_url = @cat_json[0]['breeds'][0]['vcahospitals_url']
    @wikipedia_url = @cat_json[0]['breeds'][0]['wikipedia_url']
  end


end
