require('sinatra')
require('sinatra/reloader')
require('./lib/coins')

get('/form') do
  erb(:form)
end

get('/result') do
  @object = params.fetch('object')
  placeholder = params.fetch('object').to_f()
  coin_array = placeholder.coins()
  @quarters = coin_array[0]
  @dimes = coin_array[1]
  @nickels = coin_array[2]
  @pennies = coin_array[3]
  erb(:result)
end
