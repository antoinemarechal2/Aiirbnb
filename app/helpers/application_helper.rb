module ApplicationHelper
    
    def avatar_url(user)
    if user.image
       user.image
    else
       user.avatar.url
    end
    end
    
    def avatar_url(user)
        if user.avatar.present?
            user.avatar.url
        else
            'default_image.jpg'
        end
    end
end
