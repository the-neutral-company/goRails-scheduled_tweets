class PasswordController < ApplicationController
    before_action :require_user_logged_in!
end