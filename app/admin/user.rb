ActiveAdmin.register User do
    permit_params images: [], audios: [], videos: []
  
    form do |f|
      f.inputs do
        f.input :images, as: :file, input_html: { multiple: true }
        f.input :audios, as: :file, input_html: { multiple: true }
        f.input :videos, as: :file, input_html: { multiple: true }
      end
      f.actions
    end
  
    show do 
      attributes_table do 
        row :name
        row :age 
        row :address
        row :images do |user|
          if user.images.attached?
            user.images.each do |image|
              span do 
                image_tag url_for(image), size: '200x200'
              end
            end
          end
        end
        row :videos do |user|
          if user.videos.attached?
            user.videos.each do |video|
              span do
                video_tag url_for(video), controls: true, size: '200x200'
              end
            end
          end
        end
      end
    end
  end
  