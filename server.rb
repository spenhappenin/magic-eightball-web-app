require 'pry'
require 'sinatra'
require 'babbler'

	$default_answers = [
		'It is certain.',
		'It is decidedly so.',
		'Without a doubt.',
		'Yes, definitely.',
		'You may rely on it.',
		'Does a bear shit in the woods?',
		'Most likely.',
		'Outlook good.',
		'No',
		'Unfortunately no.',
		'Try asking again later.',
		'Not a single chance!',
		'If I said yes, would that make you feel better?',
		'Not likely',
		'Bwahahaha! Ya... right.'
		] 

	$new_answers = $default_answers.clone

get '/' do
	erb :index
end

post '/' do 
	@answer = $new_answers.sample		
	@question = params[:question]
	erb :index
end

get '/show' do 

	erb :show
end


get '/create' do
	erb :create
end

post '/create' do 
	@add_answer = params[:add_answer]
	erb :create
end

get '/reset' do 
	erb :reset
end

post '/reset' do 
	@yes = params[:yes]
	erb :reset
end 












