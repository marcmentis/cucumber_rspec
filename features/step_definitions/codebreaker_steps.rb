class Output 
	def messages
    	@messages ||= []
	end
	def puts(message)
	    messages << message
	end 
end
# def output
# 	@output ||= Output.new
# end

Given(/^I am not yet playing$/) do
  # express the regexp above with the code you wish you had
end

When(/^I start a new game$/) do
  # Codebreaker::Game.new.start
  @myoutput = Output.new
  game = Codebreaker::Game.new(@myoutput) 
  game.start('1234')
end

Then(/^I should see "(.*?)"$/) do |message|
	expect(@myoutput.messages).to include(message)
end

Given(/^the secret code is "(.*?)"$/) do |secret|
  @myoutput = Output.new
  game = Codebreaker::Game.new(@myoutput)
  game.start(secret)
end

When(/^I guess "(.*?)"$/) do |guess|
  @myoutput = Output.new
  game = Codebreaker::Game.new(@myoutput)
  game.guess(guess)
end




