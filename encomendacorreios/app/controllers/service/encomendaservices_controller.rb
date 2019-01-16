module Service
    class EncomendaservicesController < ApplicationController
        #listar todos os pacotes GET
        def index
            encomendas = Encomenda.order('created_at DESC')
            render json: {status: 'SUCCESS', message:'Carregado com sucesso', 
                data: encomendas}, status: :ok
        end

        #criar um novo objeto POST
        def create 
            encomenda = Encomenda.new(encomenda_params)
            if encomenda.save
                render json: {status: 'SUCCESS', message: 'Salvo com sucesso!', 
                    data: encomenda}, status: :ok
            else
                render json: {status: 'ERROR', message: 'Não foi possível salvar o objeto!',
                data:  encomenda.errors}, status: :unprocessable_entity
            end

        end

        #Deletar um objeto DELETE
        def destroy
            encomenda = Encomenda.find(params[:id])
            encomenda.destroy
            render json: {status: 'SUCCESS', message: 'Deletado o pacote',
            data:encomenda}, status: :ok

        end

        #Atualizar um objeto UPDATE
        def update
            encomenda = Encomenda.find(params[:id])
            if encomenda.update_attributes(pacote_params)
                render json: {status: 'SUCCESS', message:'Pacote alterado',
                data: encomenda}, status: :ok
            else
                render json: {status: 'ERROR', message: 'Pacote não alterado!',
                data: encomenda.errors}, status: :unprocessable_entity
            end
        end

        private def encomenda_params
            params.permit(:codigo, :nome)#colocar os parametros aqui
        end
    end
end