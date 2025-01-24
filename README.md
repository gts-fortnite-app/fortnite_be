<div align="center">
    <img src="https://github.com/gts-fortnite-app/fortnite_be/assets/127896538/04164b07-4b11-4b12-b63a-210ee05b8e5d" alt="Fortnite">
</div>

![pull request](https://img.shields.io/github/issues-pr/gts-fortnite-app/fortnite_be.svg)
![pull request closed](https://img.shields.io/github/issues-pr-closed/gts-fortnite-app/fortnite_be.svg)
[![website down](https://img.shields.io/website-up-down-green-red/http/monip.org.svg)](https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop)

![Made with Ruby on Rails](https://img.shields.io/badge/Made%20with-Ruby%20on%20Rails-%23990000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Made with Ruby](https://img.shields.io/badge/Made%20with-Ruby-%23990000?style=for-the-badge&logo=ruby&logoColor=white)


Technologies used:<br>
<div>
  <img src="https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
  <img src="https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white"/>
  <img src="https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white"/>
  <img src="https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white" />
</div>

---

GT's Fortnite Tracker App is built with a Ruby on Rails backend, this application is deployed on Heroku for accessibility. It integrates Fortnite's external API to retrieve real-time data and implements a customized internal API to transmit data to the frontend with Cross-Origin Resource Sharing (CORS) support. The application's backend architecture is designed with a service-oriented approach, employing a service and facade pattern to simplify interactions with external APIs. It also utilizes Plain Old Ruby Objects (POROs) for encapsulating logic, ensuring a separation of concerns. Lastly, a JSON serializer is utilized to format the data dynamically for the frontend and ensuring that only essential information is sent.

<details>
<summary>The Team</summary>

### ![built with love](http://ForTheBadge.com/images/badges/built-with-love.svg)
- Gabe Torres [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Gabe-Torres) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gabe-torres-74a515269/)
</details>

--- 

## Summary 
- [Important Links](#important-links)
- [Getting Started](#getting-started)
- [Routes](#routes)
- [Test Suite](#test-suite)
- [API JSON Contract](#api-json-contract)


## Important Links
- [Back-End Production Site](https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop)
- [Front-End Production Site](https://gts-fortnite-tracker-a0d0405c9f2a.herokuapp.com/)
- [Front-End Repo](https://github.com/gts-fortnite-app/fortnite_fe)


## Getting Started
<details>
<summary>Database Information</summary>

**Schema**

```ruby
ActiveRecord::Schema[7.0].define(version: 0) do
  enable_extension "plpgsql"
end
```

**Gems**
```ruby
ruby "3.2.2"
gem "rails", "~> 7.0.8"
gem "rack-cors"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem 'jsonapi-serializer'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false
  gem "faraday"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "pry"
  gem "shoulda-matchers"
end

group :development do
gem "launchy"
gem "simplecov"
end
```

**Installing**
 - Fork and clone this repo
  - Run `bundle install`
  - Run `rails db:{create,migrate,seed}`
  - Run `rails s` to start the server
  - Open your browser and navigate to `localhost:3000`
</details>
