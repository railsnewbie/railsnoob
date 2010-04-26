# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsnewbie_session',
  :secret      => '217f35cba3fd132d9e9c714a6d2c543d0c143e7c56a2512b93e1b53fdfd6a863ce9c9ac0cbfb01d21b83c20f5ac128a0b062cd05d52c84a742a7283dcfad8df1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
