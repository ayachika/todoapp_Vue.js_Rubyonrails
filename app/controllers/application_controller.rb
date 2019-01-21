class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session #with: :exeption では効かなかった。APIの場合はnull_sessionにすること
end
