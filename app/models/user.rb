class User
  def self.authenticate(username, password)
    if USERS[username] == password
      Rails.logger.info "User '#{username}' logged in."
      return true
    else
      Rails.logger.warn "User '#{username}' failed to log in."
      return false
    end
  end
end