class BookmarksController < ApplicationController
    def update
        bookmark = Bookmark.where(ad: Ad.find(params[:ad]), user: current_user)
        if bookmark == []
            Bookmark.create(ad: Ad.find(params[:ad]), user: current_user)
            @bookmark_exists == true
        else
            bookmark.destroy_all
            @bookmark_exists == false
        end
        respond_to do |format|
            format.html {}
            format.js {}
        end
    end
end
