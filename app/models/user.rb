class User

  def self.all
    YAML.load_file(File.join(File.dirname(__FILE__), '../../config', 'users.yml'))[:users]
  end

  def self.authenticate(username, password)
    if all[username] == password
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
