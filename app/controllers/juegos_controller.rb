class JuegosController < ApplicationController

    # Si se recibe un parámetro de categoría,
    # se filtran los juegos por esa categoría, caso contrario se muestran todos
    def index
        if params[:categoria]
            @juego = Juego.where(categoria: params[:categoria])
        else
            @juego = Juego.all
        end
    end
end