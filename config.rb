activate :directory_indexes
activate :autoprefixer

set :relative_links, true
set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"
set :layout, "layouts/application"

set :markdown, syntax_highlighter: 'rouge'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
  deploy.remote = 'github'
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'staging.legitbs.net'
  s3_sync.region = 'us-east-1'
  s3_sync.aws_access_key_id = ENV['S3_ACCESS_KEY_ID']
  s3_sync.aws_secret_access_key = ENV['S3_ACCESS_KEY_SECRET']
end
