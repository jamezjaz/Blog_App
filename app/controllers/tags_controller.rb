class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end

    def index
        @tag = Tag.all
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        redirect_to action: "index"
    end
end
