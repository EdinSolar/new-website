configure do
  set :public_folder, './public'
end

Raven.configure do |config|
  config.dsn = ENV['RAVEN_CONFIG']
end
