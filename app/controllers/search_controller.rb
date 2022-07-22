class SearchController < ApplicationController

  def index
    @character_info = CharactersFacade.create_characters(params[:nation])
  end
end
