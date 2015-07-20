# RESTful-Rails-Development
Example code taken from the book [RESTful Rails Development](http://shop.oreilly.com/product/0636920034469.do) by Silvia Puglisi.

As I progressed through this book tutorial, I updated each chapter results when successful.

## Installation

```bash
$ git clone https://github.com/kgish/restful-rails-developmet.git book-rails4
$ cd book-rails4
$ bundle install
$ rake db:migrate
$ rails s
```

In order to populate the tables with test data, run the following command:
```bash
$ rake db:seed
```

If everything is going according to plan, we should receive the JSON string:

```bash
$ curl http://0.0.0.0:3000/api/v1/category/science
<p>{"category":{"cat_title":"SCIENCE","cat_subcats":34}}
```
