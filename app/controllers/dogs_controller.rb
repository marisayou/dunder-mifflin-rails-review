class DogsController < ApplicationController

    before_action :get_dog, only: [:show]
    def index
        @dogs = Dog.all
    end

    def sort
        @dogs = Dog.all.sort_by {|dog| dog.employees.length}.reverse
        render :index
    end

    private
    def get_dog
        @dog = Dog.find(params[:id])
    end

end
