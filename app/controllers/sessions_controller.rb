class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] != '' && params[:name]
            session[:name] = params[:name]
            redirect_to show_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.destroy
        session[:name] = nil
    end

end
