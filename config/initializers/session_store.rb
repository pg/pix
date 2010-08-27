# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pix_session',
  :secret      => '0a23bce37351713ceabf7cf400b2300f52c6e44b2b2c751f9303ba69b1067a9d0bde9acc3bf3cb48480891dc956c1e6630a1fc2546e05da5e1ee55a745acbb88'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
