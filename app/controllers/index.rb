get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  erb :event_create
end

post '/events/create' do
  event = Event.new(params)
  puts event
  if event.valid?
    redirect "/"
  else
    @errors = event.errors.full_messages
    p @errors
    erb :event_create
  end
end
