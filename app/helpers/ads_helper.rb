module AdsHelper

    def ad_author(ad)
        user_signed_in? && current_user.id == ad.user_id
    end
end
