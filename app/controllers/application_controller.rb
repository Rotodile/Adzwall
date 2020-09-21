class ApplicationController < ActionController::Base
    def bookmark_text
        return @bookmark_exists ? "Remove Bookmark" : "Bookmark"
    end

    helper_method :bookmark_text
end
