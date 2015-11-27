# Todo.Angular.APP

You're going to finish my partially made Todo Angular App!

## First

1. Clone this repo into your home directory:
  - `cd ~`
  - `git clone https://github.com/short-matthew-f/angular_todo.git`
  - `cd angular_todo`
2. Run (from **inside** the new folder), in this order:
  - `bundle` (in order to get the gems for the cloned app)
  - `rake db:create` (in order to make a local DB)
  - `rake db:migrate` (in order to have the same tables)
  - `rake db:seed` (in order to start with some dummy values)
3. Then run `rails s` and navigate to `http://localhost:3000` to see the application.

## Then

Peek around:

0. My migration ('/db/migrate/20151103152701_create_todos.rb') has the structure of todos.
1. My `app.js` (with code for the angular app) is located at `/public/lib/app.js`
2. Look at `routes.rb` (`/config/routes.rb`) to see the routes I've defined
3. Look at `application_controller.rb` (`/app/controllers/application_controller.rb`) to see the custom `home` route, which uses a different `layout` that normal
4. Look at `angular.html.erb` (`/app/views/layouts/angular.html.erb`) -- that's the new layout file for the angular portion of the app
5. Look at `todos_controller.rb` (`/app/controllers/todos_controller.rb`) to see the which actions we wish to expose to angular, descriptions of what's missing, as well as the fact that we're ignoring authenticity tokens for simplicity.
6. Look at `*.json.jbuilder` (`/app/views/todos/*`), to create the `json` formatting necessary for the angular app.  I've already completed `index.json.jbuilder`.
7. Look at `home.html.erb` (`/app/views/home.html.erb`) for the starter angular DOM code.  I've left some comments about what is missing.

## Lastly

Don't freak out.  Most of the code you need is there, and there are helpful comments along the way.  

You've got this.

![](https://upload.wikimedia.org/wikipedia/en/9/98/Stuart_Smalley.jpg)
