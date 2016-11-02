# Q0: Why is this error being thrown?
There is no pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemons are appearing from the pokemons we seed in the database. This is happening in the home_controller.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This creates a button that redirects us to capture_path as a patch request. The button is medium sized. The id: @pokemon adds the id to params with value of @pokemon and the id would be part of the path. The button creates a patch request to capture.

# Question 3: What would you name your own Pokemon?
Noodles

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(id: trainer). It also needed the id of the trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb renders layouts/messages, which shows the alert error message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
