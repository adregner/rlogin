module rlogin
  def init_files
    config_file = File.expand_path "~/.config/rlogin/ssh_config"

    if not File.exists? config_file
      base_config = File.absolute_path '../../../conf/ssh_config', __FILE__
      FileUtils.cp base_config, config_file
    end
  end
end

rlogin::init_files
