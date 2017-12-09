module Api
  class ConfigController < BaseController
    def school
      sleep(1)
      json = { 
        school: {
          title: Setting.school_title
         } 
      }
      render json: json
    end
  end
end