# encoding: utf-8
# Modifying cf_connection to make it work with cloud_files
require 'cloudfiles'

module CarrierWave
  module Storage

    class CloudFiles < Abstract
      class File
        
        private  
          def cf_connection
            @cf_connection ||= ::CloudFiles::Connection.new(:authurl => "https://auth.api.rackspacecloud.com/v1.0", :username => @uploader.cloud_files_username, :api_key => @uploader.cloud_files_api_key)
          end
      end
    end # CloudFiles
  end # Storage
end # CarrierWave
