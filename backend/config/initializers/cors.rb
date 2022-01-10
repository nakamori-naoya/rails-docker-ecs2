# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "http://localhost:3001", "http://localhost:3002", "http://localhost:3003" , 
      "next-js-portfolio10-7826ov0sj-nakamori-naoya.vercel.app", "https://next-js-portfolio10-7826ov0sj-nakamori-naoya.vercel.app/",
      "https://next-js-portfolio10.vercel.app/","next-js-portfolio10.vercel.app"
      resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
end
