# rho rails example app

## prerequisites

Ruby 1.9.3-p125 was used for testing this

## quick start

    bundle install
    bundle exec rake db:nuke
    bundle exec rails s

## setting this project up from scratch (or how we got to what's in this project right now)

    rails new rho-rails-example

add to Gemfile

    gem 'rhoconnect-rb'

add config/initializers/rhoconnect.rb - make sure settings here mirror rho-connect-example running on http://localhost:9292/console/#
see https://github.com/reinteractive-open/rho-connect-example

    Rhoconnect.configure do |config|
      config.uri          = "http://localhost:9292"
      config.token        = "d630de69ceef409f8e731d13d2ccfc31"
      config.app_endpoint = "http://localhost:3000"
      config.authenticate = lambda { |credential|
        return true 
      }
    end

test connection - rails app should start up normally

    bundle exec rails s

setup product model

    bundle exec rails generate scaffold Product name:string

add rhoconnect resource, partition and query to app/models/product.rb

    include Rhoconnect::Resource

    def partition
      :app
    end
    
    def self.rhoconnect_query(partition)
      Product.all
    end

add some dummy data in db/seeds.rb

    10.times do |i|
      Product.create!(:name => "Product #{i+1}")
    end

add lib/tasks/nuke.rake

    namespace :db do
      desc "nuke the database"
      task :nuke => :environment do
        Rake::Task["db:drop"].invoke
        Rake::Task["db:create"].invoke
        Rake::Task["db:schema:load"].invoke
        Rake::Task["db:migrate"].invoke
        Rake::Task["db:seed"].invoke
        Rake::Task["db:test:clone"].invoke
        Rake::Task
      end
    end

and execute

    bundle exec rake db:nuke

set products to root in config/routes.rb

    root :to => 'products#index'

remove index

    rm public/index.html

you should now be good to go - start her up

    bundle exec rails s
