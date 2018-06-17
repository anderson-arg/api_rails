module Api
	module V1
		class GamesController < ApplicationController
			swagger_controller :games, "Games"

			swagger_api :index do
			    summary "Todos Games"			    
			    response :unauthorized
			    response :not_acceptable
			end

			swagger_api :show do
			    summary "Carregar Game"
			    param :path, :id, :integer, :required, "Game Id"
			    response :ok, "Success", :Game
			    response :unauthorized
			    response :not_acceptable
			    response :not_found
			end

			swagger_api :create do
			    summary "Criar novo Game"
			    param :form, :name, :string, :required, "Name"
			    param :form, :value, :float, :required, "Value"
			    param :form, :category_id, :integer, :required, "Category Id"			    
			    response :unauthorized
			    response :not_acceptable
			end

			swagger_api :update do
			    summary "Atualizar Game"
			    param :path, :id, :integer, :required, "Game Id"
			    param :form, :name, :string, :required, "Name"
			    param :form, :value, :float, :required, "Value"
			    param :form, :category_id, :integer, :required, "Category Id"			    
			    response :unauthorized
			    response :not_found
			    response :not_acceptable
			end

			swagger_api :destroy do
			    summary "Deletar Game"
			    param :path, :id, :integer, :required, "Game Id"
			    response :unauthorized
			    response :not_found
			end

			swagger_api :search do
			    summary "Pesquisar Game por Nome"
			    param :path, :name, :string, :required, "Name"
			    response :unauthorized
			    response :not_found
			end

			def index
		  		list_games = Game.all
				render json: {status: 'SUCCESS', message: 'Todos os Games', data:list_games}, status: :ok
			end

			def show
				game = Game.find(params[:id])
				render json: {status: 'SUCCESS', message: 'Game Carregado', data:game}, status: :ok
			end			
		
			def create
				game = Game.new(game_params)
			    
			    if game.save
			        render json: {status: 'SUCCESS', message:'Game Cadastrado', data:game},status: :ok
			    else
			        render json: {status: 'ERROR', message:'Game não Cadastrado', data:game.erros},status: :unprocessable_entity
			    end			    
			end
			  
			def update
				game = Game.find(params[:id])
				if game.update_attributes(game_params)
					render json: {status: 'SUCCESS', message:'Game Atualizado', data:game},status: :ok
				else
					render json: {status: 'ERROR', message:'Game não Atualizado', data:game.erros},status: :unprocessable_entity
				end
			end

			def destroy
				game = Game.find(params[:id])
				game.destroy
				render json: {status: 'SUCCESS', message:'Game Deletado', data:game},status: :ok
			end

			def search
				game = Game.search_name(params[:name])
				render json: {status: 'SUCCESS', message: 'Busca por Nome', data:game}, status: :ok
			end

			private		 
		    def game_params
		    	params.permit(:name, :value, :category_id)
		    end		    
		end
	end
end