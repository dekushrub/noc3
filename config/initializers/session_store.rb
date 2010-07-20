# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_noc-3_session',
  :secret      => '3b95969504dc2bc40288ca80811757d7934147e24d55cd739be67f4906ff378cc0e35f61e4f3c7e4e9dbc9745ebc9b5fd28f61e0aea149a16bd74f00bc1b8c82'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
