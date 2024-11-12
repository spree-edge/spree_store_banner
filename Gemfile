source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '7.1.3.4'

spree_opts = '4.8.3'
gem 'spree', spree_opts

gem 'rails-controller-testing'

gemspec
