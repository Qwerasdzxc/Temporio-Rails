source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails',                    '6.1.0'  #Rails 
gem 'puma',                     '5.0.4'  #Web server
gem 'sass-rails',               '6.0.0'  #Sass-CSS
gem 'webpacker',                '4.2.2'  #Angular Vue support
gem 'turbolinks',               '5.2.1'  #Realtime apps
gem 'jbuilder',                 '2.10.0' #Gerneriše JSON
gem 'bootsnap',                 '1.4.6', require: false
gem 'bootstrap-sass',           '3.4.1'
gem 'bcrypt',                   '3.1.13'
gem 'faker',                    '2.1.2'
gem 'will_paginate',            '3.1.8'
gem 'bootstrap-will_paginate',  '1.0.0'

group :production do
  gem 'pg', '1.2.3'
end

group :development, :test do
  gem 'sqlite3', '1.4.2'   #Mala baza za interni razvoj
  gem 'byebug',  '11.1.3', platforms: [:mri, :mingw, :x64_mingw]  #Debagovanje
end

group :development do
  gem 'web-console',           '4.0.2' 
  gem 'listen',                '3.2.1' #Koristi se za Spring
  gem 'spring',                '2.1.1' #Drzi nam aplikaciju online u pozadini, mnogo brzi development
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'capybara',           '3.32.2'   
  gem 'selenium-webdriver', '3.142.7'
  gem 'webdrivers',         '4.3.0'
end
