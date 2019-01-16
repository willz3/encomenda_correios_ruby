require 'tools/rastrear.rb'
class RastreiosController < ApplicationController

    def index
        @encomendas = Encomenda.all
    end

    def historico
        cd = params[:codigo]
        @object = rastrear(cd)
    end
end
