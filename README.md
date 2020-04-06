# Inventory

A simple rails app to inventory computers.

* **Ruby Version** 2.6.5
* **Node Version** 12.12.1

## Local Development
To install dependencies, run these commands:
```
brew install postgresql
yarn install
 ```
To create the development database:
```
rake db:create
```
### Running the Test Suite
The test suite is the `rspec-rails` gem.

To run the test suite, run:
```
bundle exec rspec
```
To test a single file, run:
```
rspec path/to/test_file.rb
```
