require 'yaml'

class User
  def self.all
    YAML.load_file(File.join(File.dirname(__FILE__), '../..', 'config', 'users.yml'))[:users]
  end
  
  def self.authenticate(username, password)
    if all[username] == password
      Rails.logger.info "User '#{username}' logged in."
      return true
    else
      Rails.logger.warn "User '#{username}' failed to log in."
      return false
    end
  end
end
