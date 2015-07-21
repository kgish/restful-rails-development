# RESTful-Rails-Development
Example code taken from the book [RESTful Rails Development](http://shop.oreilly.com/product/0636920034469.do) by Silvia Puglisi.

As I progressed through this book tutorial, I updated each chapter results when successful.

## Installation

    $ git clone https://github.com/kgish/restful-rails-developmet.git book-rails4
    $ cd book-rails4
    $ bundle install
    $ rake db:migrate
    $ rails s

In order to (re-)populate the tables with test data, run the following command:
    
    $ rake db:migrate:reset
    $ rake db:seed

If everything is going according to plan, we should receive the JSON string:

    $ curl http://0.0.0.0:3000/api/v1/category/arts
    {"category":{"cat_id":1832,"cat_title":"Arts","cat_pages":133,"cat_subcats":38,"cat_files":0}

## Important

The book is based on Rails v4.1.4 whereas I had upgraded to Rails v4.2.1 so in order to get the examples to
work properly you need to change the file `app/controllers/application_controller.rb` from

```ruby
class ApplicationController < ActionController::API
end
```

to
```ruby
class ApplicationController < ActionController::Base
end
```

and additionally (in order to be able to use `responds_to`) add the following line to `Gemfile`:
    
    gem 'responders', '~> 2.0'
