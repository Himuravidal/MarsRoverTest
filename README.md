# Mars Rovers

## Brief explanation

This project is a ruby implementation for the Mars rover challenge. The first approach was to do a procedural program that solves the problem.
When I understand the problem, I started to change in a more OOP way.
There's still some problem with this implementation, for example, the input is only thought for 2 rover units, but this can be fixed with a better load input data.
Also, it needs a lot more unit tests.
The design was to keep the coordinates data and the rover units command separated. Trying to respect SRP and other SOLID principles. With more time, this can be improved.

### Requirements  
  
- Ruby 3.0.1  or lower version.  
- Bundler  
- RSpec 3.7  
  
### Instructions for execute

- Clone the repo  
- CD into `MarsRoverTest`   
- Run the following to install the Rspec Gem to run the tests.  
      bundle install 
- Execute the project and tests with `rake` 
- Also can execute only the program with  `ruby src/mars_init.rb input.txt` 
- The input data are in the input.txt file.


#### I would love to hear the feedback.