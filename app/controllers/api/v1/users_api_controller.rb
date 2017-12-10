module Api
  module V1
    class UsersApiController < ::ApiController

        $correct = [0,0,0,0,0]
        $total = [0,5,5,5,5]

    	
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

<<<<<<< HEAD
    	def get_answers
    		student_id = params["student_id"]
    		Array answers = params["answers"]
            Integer counter = 0
            tempArray = Array.new

            for i in 1..5
    			if answers[i] == correctanswers[i] then
    				counter = counter+1

                    tempArray += (QuestionTagMapping.where(question_id: i).all.uniq.pluck(:tag_id))

    			end
=======

   #  	def get_answers
   #  		student_id = params["student_id"]
   #  		Array answers = params["answers"]

   #  		for i in 1..5
   #  			if answers[i] == correctanswers[i] then
   #  				counter = counter+1
   #  			else
    				
   #  			end
>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471

   #  		end

<<<<<<< HEAD
            # tempArray.each do |i|
=======
			# correct = Array.new(4)
			# total = Array.new(4)
>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471

            # end

            if counter == 4 || counter == 5
                return response_data({results: [100,100,100,100]},"Result Done",200)
            else

<<<<<<< HEAD
                nextQuest = (tempArray[1] + 5 - 1).to_i
                quest = Question.where(id: nextQuest).all.first
                return response_data({question: quest.content},"New Question created",200)
            end
    	end

        def get_answers_6
            answer = params["answer"]

            quest = Question.where(id: 7).all.first

            if answer == correctanswers[6]
                return response_data({question: quest.content},"New Question created",200)
            else
                return response_data({results: [60,0,40,20]},"Result Done",200)
            end
        end

        def get_answers_7
            answer = params["answer"]

            quest = Question.where(id: 8).all.first

            if answer == correctanswers[7]
                return response_data({question: quest.content},"New Question created",200)
            else
                return response_data({results: [70,100,50,20]},"Result Done",200)
            end
        end

        def get_answers_8
            answer = params["answer"]

            # quest = Question.where(id: 7).all.first

            if answer == correctanswers[8]
                return response_data({},"Ideal Case _ Not Possible",200)
            else
                return response_data({results: [80,100,90,50]},"Result Done",200)
            end
        end
=======
   #  	end
	   	# def test_list
	   	# 	student_id = params[:student_id]
	   	# 	all_test = Test.find_by_student_id(student_id)
	   	# 	return response_data({test: all_test},"Received", 200)
	   	# end

>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471

    end
  end
end