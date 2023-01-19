class BlogController < ApplicationController
    # controller method that will access the items from the database
    # in the index method we are making an active record call that will save all the contant from the database as an instance variable
    
    def index
       @blog = Blog.all
    end    
end
