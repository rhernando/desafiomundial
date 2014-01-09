class JugadoresController < ApplicationController

  respond_to :json

  def index
    jugadores = Jugador.all

    respond_with(jugadores) do |format|
      format.json { render :json => jugadores.as_json }
    end

  end
end
