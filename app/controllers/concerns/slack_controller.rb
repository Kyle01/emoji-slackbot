class SlackController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def create
        if(params[:type]=='url_verification')
            @secret_key = params[:challenge]
            render 
        end
    end
end