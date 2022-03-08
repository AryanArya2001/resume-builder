class UsersController < ApplicationController
    def new 
        render('signup')    
    end

    def create
        puts params[:user]
        user = User.new({name: params[:user][:name], email: params[:user][:email], password: params[:user][:password]})
        user.profile = Profile.new
        if user.save
            puts user
            flash[:success] = "User added."
            redirect_to login_url
        else
            puts user.errors.full_messages
            flash[:error] ="some error occured"
            redirect_to signup_url
        end
    end
    def edit
        user = User.find(params[:user][:id])
    end

end
