class ImageUploader < Shrine
    Attacher.validate do
        validate_mime_type %w[image/jpeg image/png image/webp image/tiff]
        validate_max_size 1*1024*1024
    end
end