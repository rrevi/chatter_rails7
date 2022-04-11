// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// because form data controller action isn't working in _form.html.erb, here we are...
addEventListener("turbo:submit-start", ({ target }) => {
  console.log("turbo:submit-end event!")
  target.reset()
})