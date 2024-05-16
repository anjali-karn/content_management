class User < ApplicationRecord
    has_many_attached :images
    has_many_attached :audios
    has_many_attached :videos

    def self.ransackable_associations(auth_object = nil)
        ["audios_attachments", "audios_blobs", "images_attachments", "images_blobs", "videos_attachments", "videos_blobs"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "updated_at"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["blob_id", "created_at", "id", "id_value", "name", "record_id", "record_type"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["blob_id", "created_at", "id", "id_value", "name", "record_id", "record_type"]
      end
    
end
