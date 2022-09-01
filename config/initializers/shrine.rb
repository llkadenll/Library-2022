require "shrine"

case Rails.env
  when 'development'
    require "shrine/storage/file_system"
    Shrine.storages = {
      cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
      store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),       # permanent
    }
  when 'test'
    require 'shrine/storage/memory'
    Shrine.storages = {
      cache: Shrine::Storage::Memory.new,
      store: Shrine::Storage::Memory.new
    }
end
Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation
Shrine.plugin :validation_helpers
