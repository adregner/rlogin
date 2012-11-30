class Rlogin
  def self.init_files
    config_file = File.expand_path "~/.config/rlogin/ssh_config"

    if not File.exists? config_file
      require 'fileutils'
      base_config = File.absolute_path '../../../config/ssh_config', __FILE__
      FileUtils.cp base_config, config_file
    end
  end
end

Rlogin::init_files
