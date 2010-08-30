class User
  def self.authenticate(username, password)
    if USERS[username] == password
      logger.info "User '#{username}' logged in."
      return true
    else
      logger.warn "User '#{username}' failed to log in."
      return false
    end
  end
  
  def self.logger
    RAILS_DEFAULT_LOGGER
  end
end