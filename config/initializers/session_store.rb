# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bvc_session',
  :secret      => '5859579915d21a0a62f7a19042ab186dfd11e971259bdde99246c06e3619b3003a9ca4e69a6149fd392a70f6a05e4d4b5710f93cc3ee8f49f312d8318476531b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
