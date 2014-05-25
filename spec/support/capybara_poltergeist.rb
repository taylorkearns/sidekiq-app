if ENV["TRAVIS"].present?
  Capybara.default_wait_time = 240
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, timeout: 240)
  end
end

Capybara.javascript_driver = :poltergeist
