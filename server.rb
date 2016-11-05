require 'pry'
require 'sinatra'
require 'babbler'

get '/' do
	erb :index
end

post '/' do 
	@default_answers = [
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
	@answer = @default_answers.sample		
	@question = params[:question]
	erb :index
end

get '/create' do
	erb :create
end

post '/create' do 
	@default_answers = [
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
	@answer = @default_answers.sample		
	@question = params[:question]
	erb :index
end

