class JugadoresController < ApplicationController

  respond_to :json

  def index
    jugadores = Jugador.all

    respond_with(jugadores) do |format|
      format.json { render :json => jugadores.as_json }
    end
  end

  def show
    jugador = Jugador.find(params[:id])
    respond_with(jugador) do |format|
      format.json { render :json => jugador.as_json }
    end

  end

  def create

    # Create and save new post from data received from the client
    jugador = Jugador.new params[:new_jugador]

    # Confirm post is valid and save or return HTTP error
    if jugador.valid?
      jugador.save!
    else
      render "public/422", :status => 422
      return
    end

    # Respond with newly created post in json format
    respond_with(jugador) do |format|
      format.json { render :json => jugador.as_json }
    end

  end

end
