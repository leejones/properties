# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_properties_session',
  :secret      => '2fa24cb983278a8520e5afc67314693a874ca438978502a1152eae3f822efc43100abccf69f2339b1b8cf68ef93cb7c82bd8ca594c5211fd66c125c9891e14c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
