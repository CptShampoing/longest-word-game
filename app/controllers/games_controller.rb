require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @answer = params[:answer]
    raise
  end

  def good_word
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    dico = open(url).read
    good_word = JSON.parse(dico)
    return good_word
end
