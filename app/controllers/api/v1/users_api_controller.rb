module Api
  module V1
    class UsersApiController < ::ApiController

<<<<<<< HEAD
        # $correct = [0,0,0,0,0]
     #    $total = [0,5,5,5,5]
        $current = 5
        $correctanswers = [0,8,5,5,28,72,4,91,102]

        def tag_list
            data = Tag.all
            return response_data(data, "Data received", 200)
        end
=======
<<<<<<< HEAD
    	# $correct = [0,0,0,0,0]
     #    $total = [0,5,5,5,5]
        $current = 5
        $correctanswers = [0,8,5,5,28,72,4,91,102]
=======
        $correct = [0,0,0,0,0]
        $total = [0,5,5,5,5]
>>>>>>> 7ee1e8d29a6c26ba802939920a9816b3f8f4b542

    	def tag_list
    		data = Tag.all
    		return response_data(data, "Data received", 200)
    	end
>>>>>>> 0658f82c38dae9944d3da6b6b6c992282d50cdbe

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


        def get_quest
            
            
            questions = Array.new
            for i in 1..5
                questions << Question.where(id: i).all.first.content
            end
            correctanswersarray = [0,8,5,5,28,72]

<<<<<<< HEAD

            return response_data({questions: questions , correctanswers: correctanswersarray}, "questions sent", 200)
        end


        def get_answers
            student_id = params["student_id"]
            Array answers = params["answers"]
            Integer counter = 0
            tempArray = Array.new
=======
    	def get_quest
			
			
    		questions = Array.new
    		for i in 1..5
    			questions << Question.where(id: i).all.first.content
    		end
       	   	correctanswersarray = [0,8,5,5,28,72]

<<<<<<< HEAD
=======
   #  		for i in 1..5
   #  			if answers[i] == correctanswers[i] then
   #  				counter = counter+1
   #  			else
    				
   #  			end
>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471
>>>>>>> 7ee1e8d29a6c26ba802939920a9816b3f8f4b542

    		return response_data({questions: questions , correctanswers: correctanswersarray}, "questions sent", 200)
    	end

<<<<<<< HEAD

  		def get_answers
    		student_id = params["student_id"]
    		Array answers = params["answers"]
            Integer counter = 0
            tempArray = Array.new

            for i in 1..5
            	puts "answers", answers[i],"answers"
            	puts "correctanswers",$correctanswers[i],"correctanswers" 
    			if (answers[i.to_s]).to_i == $correctanswers[i] 
    				counter = counter+1
                    tempArray += (QuestionTagMapping.where(question_id: i).all.uniq.pluck(:tag_id))
    			end
    		end
    		tempArray = tempArray.uniq
    		puts tempArray
    		# byebug

            if counter == 4 || counter == 5
                return response_data({results: [100,100,100,100]},"Result Done",200)
            else
            	puts  "tempArray"," ",tempArray," ","tempArray"
                nextQuest = (tempArray[1] + 5 - 1).to_i
                quest = Question.where(id: nextQuest).all.first
                current = nextQuest
                return response_data({id: nextQuest,question: quest.content},"New Question created",200)
            end
    	end

        def get_answers_678
            answer = params["answer"]

            quest = Question.where(id: current).all.first
            current = current + 1;
            
            if answer == $correctanswers[6]
                return response_data({id: current-1,question: quest.content},"New Question created",200)
            else
                return response_data({results: [60,0,40,20]},"Result Done",200)
            end
        end
=======
<<<<<<< HEAD
            # tempArray.each do |i|
=======
			# correct = Array.new(4)
			# total = Array.new(4)
>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471
>>>>>>> 0658f82c38dae9944d3da6b6b6c992282d50cdbe

            for i in 1..5
                puts "answers", answers[i],"answers"
                puts "correctanswers",$correctanswers[i],"correctanswers" 
                if (answers[i.to_s]).to_i == $correctanswers[i] 
                    counter = counter+1
                    tempArray += (QuestionTagMapping.where(question_id: i).all.uniq.pluck(:tag_id))
                end
            end
            tempArray = tempArray.uniq
            puts tempArray
            # byebug

            if counter == 4 || counter == 5
                return response_data({results: [100,100,100,100]},"Result Done",200)
            else
                puts  "tempArray"," ",tempArray," ","tempArray"
                nextQuest = (tempArray[1] + 5 - 1).to_i
                quest = Question.where(id: nextQuest).all.first
                current = nextQuest
                return response_data({id: nextQuest,question: quest.content},"New Question created",200)
            end
        end

        def get_answers_678
            answer = params["answer"]

            quest = Question.where(id: current).all.first
            current = current + 1;
            
            if answer == $correctanswers[6]
                return response_data({id: current-1,question: quest.content},"New Question created",200)
            else
                return response_data({results: [60,0,40,20]},"Result Done",200)
            end
        end
<<<<<<< HEAD
=======
=======
   #  	end
	   	# def test_list
	   	# 	student_id = params[:student_id]
	   	# 	all_test = Test.find_by_student_id(student_id)
	   	# 	return response_data({test: all_test},"Received", 200)
	   	# end

>>>>>>> b9ba21c3de14475e6f3ffa1c887bc70aa32ee471
>>>>>>> 7ee1e8d29a6c26ba802939920a9816b3f8f4b542
>>>>>>> 0658f82c38dae9944d3da6b6b6c992282d50cdbe

    end
  end
end
