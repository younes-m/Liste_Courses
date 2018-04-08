class ListesController < ApplicationController

  def index
    @listes = Liste.all
  end

  def new
    @liste = Liste.new
  end

  def create
    @liste = Liste.new
    @liste.utilisateur = 'Default'
    @liste.nom_liste = params[:liste][:nom_liste]
    @liste.save
    redirect_to listes_path
  end

  def show
    redirect_to liste_articles_path 
  end


end
