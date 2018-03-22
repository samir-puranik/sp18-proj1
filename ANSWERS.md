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

I passed in trainer_path(current_trainer). This is the path_prefix to the path that routes to the profile of the current_trainer. We must pass current_trainer as a parameter to pull up the current trainer's page.


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
During the default rendering that happens for every page in application.html.erb, there is a check to see if any messages should be flashed to the screen. The flash provides a way to pass temporary primitive-types (String, Array, Hash) between actions. Anything you place in the flash will be exposed to the very next action and then cleared out. @pokemon.errors accesses the validation errors that occurred as a cause of failing to save the object. .full_messages returns all the full error messages in an array and .to_sentence converts the array to a comma-separated sentence where the last element is joined by the connector word. Assigning the formatted error message to flash allows us to pass the error message through to the rendering of application.html.erb. It then goes to messages.html.erb where all messages in flash are then printed out (aka "flashed" to the screen.) Flash is then cleared out.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
