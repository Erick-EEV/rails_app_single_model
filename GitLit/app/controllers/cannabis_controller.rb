class CannabisController < ApplicationController

    def index
        @cannabi = Cannabis.all
        render 'index'
    end

    def show
        @cannabi = Cannabis.find(params[:id])
        render 'show'
    end

    def new
        render 'new'
    end

    def create
        strain = params[:strain]
        classification = params[:classification]
        price = params[:price]
        desc = params[:description]
        new_c = Cannabis.create(strain: strain, 
            classification: classification, 
            price: price,
            description: desc)
            new_c.save
            redirect_to cannabi_path(new_c.id)
    end

    def edit
        @cannabis = Cannabis.find(params[:id])
        render 'edit'
    end

    def update
        @cannabis = Cannabis.find(params[:id])
        @cannabis.update(cannabis_paramaters)
        redirect_to cannabi_path(@cannabis.id)
    end

    
    def destroy
        @cannabis = Cannabis.find(params[:id])
        @cannabis.destroy
        redirect_to cannabis_path
    end
    
    private 
    def cannabis_paramaters
        params.require(:cannabis).permit(:strain, :classification, :price, :description)
    end
end
