module Api
  module V1
    class UsersApiController < ::ApiController


    	
    	def tag_list
    		data = Tag.all
    		return response_data(data, "Data received", 200)
    	end

    	def get_tag
    		tag_id = params["tag_id"]
    		puts tag_id
    		#Array a = QuestionTagMapping.where(tag_id: tag_id).all
    		unless tag_id == 1
    			return response_data({}, "Bad Request", 201)
    		end
    		return response_data({},"Test created",200)
    	end

    	def give_tests
    		student_id = params[:student_id]
    		puts student_id.class
    		# puts type(student_id)
    		if student_id == 1
    			student = Student.find_by(id: student_id)
    			a = ["Maths", "English", "Science"]
    			all_test = Test.where(student_id: student_id).all
	   			return response_data({all_test: all_test,a: a,student_name: student.name},"Received", 200)
    		end
    		return response_data(a, "Tests not received", 201)
    	end


   #  	def get_answers
   #  		student_id = params["student_id"]
   #  		Array answers = params["answers"]

   #  		for i in 1..5
   #  			if answers[i] == correctanswers[i] then
   #  				counter = counter+1
   #  			else
    				
   #  			end

   #  		end

			# correct = Array.new(4)
			# total = Array.new(4)



   #  	end
	   	# def test_list
	   	# 	student_id = params[:student_id]
	   	# 	all_test = Test.find_by_student_id(student_id)
	   	# 	return response_data({test: all_test},"Received", 200)
	   	# end


    end
  end
end