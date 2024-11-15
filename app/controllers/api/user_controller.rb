module Api
  class UserController < ApplicationController
    before_action :authenticate_user!

    def index
      puts current_user
      if current_user
        token = request.headers["Authorization"]&.split(" ")&.last
        user = current_user.as_json
        user["token"] = token

        render json: {
          status: { code: 200, message: "user profile" },
          data: {
            profile: user
          }
        }
      end
    end
  end
end
