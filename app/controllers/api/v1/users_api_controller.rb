module Api
  module V1
    class UsersApiController < ::ApiController
    	def tag_list
    		data = Tag.all
    		return response_data(data, "Data received", 200)
    	end

    	def get_tag
    		tag_id = params["tag_id"]
    		#Array a = QuestionTagMapping.where(tag_id: tag_id).all
    		unless tag_id == 1
    			return response_data({}, "Fucked up Request", 201)
    		end
    		return response_data({},"Test created",200)
    	end
    end
  end
end