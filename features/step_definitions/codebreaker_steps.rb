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
  game = Codebreaker::Game.new(output) 
  game.start
end

Then(/^I should see "(.*?)"$/) do |message|
	output = Output.new
	# stub_message = output.messages
	# stub_message.should include(message)
	expect(output.messages).to include(message)

  # output.messages.should include(message)
end

# Then /^I should see "([^"]*)"$/ do |message|
#   output.messages.should include(message)
# end



