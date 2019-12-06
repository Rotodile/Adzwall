class ApplicationController < ActionController::Base
    def bookmark_text
        return @bookmark_exists ? "RemoveBookmark" : "Bookmark"
    end

    helper_method :bookmark_text
end
