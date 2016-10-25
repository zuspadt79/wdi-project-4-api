# README

Some notes of what we have done so far:

```sh
$ rails new bibliobibulio -d postgresql --api
$ mv bibliobibulio/* .

# Added active_model_serializers to the gemfile
# Added rack-cors and edited the settings in config/application.rb
# Added bcrypt

$ rails g scaffold User username email password_digest image
```

Updated the routes:

```ruby
Rails.application.routes.draw do
  scope :api do
    resources :users
  end
end
```

Updated the user model:

```ruby
class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
end
```
