# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Prelaunchr::Application.config.secret_token = ENV["RAILS_SECRET"] || '00bf1820f898cfc7fbcff81f3807afbd9e68a7b5db848197bd7b2ee20adfb08fe6daca9247be70bd36c509e6358a5e983dea45eac35f78906e2fa0159ccffc3c'
