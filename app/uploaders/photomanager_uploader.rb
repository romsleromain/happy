class PhotomanagerUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
