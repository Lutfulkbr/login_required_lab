class SecretsController < ApplicationController
    before_action :not_logged_in?

    def show
    end

    private

    def logged_in?
        current_user != nil
    end

    def not_logged_in?
        if !logged_in?
            redirect_to login_path
        end
    end

end
