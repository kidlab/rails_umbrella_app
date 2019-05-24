# Demo of Umbrella app concept with Rails

## The folder structure

```
app/    # This is the main or umbrella app.
apps/   # Sub apps
  app1/
    app/
    config/
    lib/
  app2/
    app/
    config/
    lib/

```

The sub apps can be any Rack apps (Rails, Sinatra, etc.) or gems.

## How to add another app?

### Rack app

```
rails plugin new --mountable apps/another_sub_rails

# Change the app .gemfile, remove all TODO

# Add to Gemfile
gem 'sub_rails', path: 'apps/sub_rails'

# Mount to config/routes.rb
mount SubRails::Engine, at: 'another_sub_rails'
```

You can also use Sinatra or any other Rack-based framework and mount it to the umbrella app.

### For other types of apps

We can create them as gems in `apps` folder and declare them in the `Gemfile`.

## Why this structure?

- This is the well-known `Umbrella app` architecture borrow from [Elixir](https://elixirschool.com/en/lessons/advanced/umbrella-projects/) and also applied by other companies like [Shopify](https://engineering.shopify.com/blogs/engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)
- With this structure, we can leverage the power and simplicity of monolithic architecture along with modular structure.
- In the future, we can even extract sub apps to separate submodule or repositories.


## How to run?

```
bundle install
rails s
open http://localhost:3000/sub_rails
open http://localhost:3000/sub_rails2
```

## References

- https://blog.fazibear.me/umbrella-on-rails-ccf51b20e84c
- [Elixir Umbrella app](https://elixirschool.com/en/lessons/advanced/umbrella-projects/)
