class PoemsController < ApplicationController

    def index
        poems = Poem.all
        render json: poems
    end

    def create
        poem = Poem.create(poem_params)
        render json: poem
    end

    def show
        poem = Poem.find(poem_params)
        render json: poem
    end

    def update
        poem = Poem.find(poem_params)
        poem.update
        render json: poem
    end

    def destroy
        poem = Poem.find(poem_params)
        poem.destroy
        render json: poem
    end

    private

    def poem_params
        params.permit(:title, :content, :date)
    end

end
