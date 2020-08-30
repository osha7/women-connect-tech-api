Terminal commands:

-----------------Backend:--------------------

cd Develompement
cd [folder-name]
<!-- rails new [app-name-here] --api -d=postgresql -T --webpack=react  -->
for this backend I didn't use --api: (was looking for dependencies that wouldn't have had)
rails new [app-name-here] -d=postgresql
cd [app-name-here]
code .

in app terminal command: 
rails db:create
(run rails s and rails c to make sure app running and db connected)
(check postgres app to ensure you development db and test db and they are up and running)

---------------front-end:------------------------

npm install -g npm
^^ newest version of Node Package Manager ^^

npx create-react-app [app-name-here]
cd [app-name-here]
code .

npm install
npm start
npm install redux
npm install react-redux
npm install react-router-dom
<!-- npm install thunk -->

--------------CORS---------------
in backend:

Gemfile:
uncomment:
gem 'rack-cors'

run: bundle install

config/initializers/cors.rb:
uncomment:
<!-- please see my cors.rb file...much different than this, necessary for axios api call for registration/login -->
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

webpacker.yml:  please see my change on headers...
<!-- necessary for axios api call for registration/login -->
headers:
      'Access-Control-Allow-Origin': 'http://localhost:3002'
 

------------------GITHUB----------------------------

Create new github repos for each
merge local files to github repos

