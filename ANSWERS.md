# Q0: Why is this error being thrown?
The Pokemon model has not yet been created.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon were created by the seeds.rb file. When we run rails db:seed, we create these Pokemon. When they are made, their
level is a random level between 1 and 20.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
the button_to method creates a button that will submit the specified type of request which is patch in this case (:method => :patch). capture_path is a patch request and takes in a pokemon id as a parameter. Thus the entire function will create a button labeled as "Throw a Pokeball!" that is of "button medium" type and routes to the capture_path. capture_path is a patch request which takes in the pokemon id as a parameter and allows a trainer to capture a wild pokemon.

# Question 3: What would you name your own Pokemon?
I would name my Pokemon "Pad kee mao" and "Pad see ew" because I like Thai food.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
