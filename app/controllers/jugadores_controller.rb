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
end
