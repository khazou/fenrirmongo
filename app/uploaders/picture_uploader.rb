# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base


  include CarrierWave::RMagick

  # Choose what kind of storage to use for this uploader:
  storage :cloud_files

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  process :resize_to_fit => [800, 800]
  
  version :mini do
    process :resize_to_fill => [200, 150]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
