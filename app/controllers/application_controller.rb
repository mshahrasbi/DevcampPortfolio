class ApplicationController < ActionController::Base

 include DeviseWhitelist
 include SetSource
 include CurrentUserConcern
 include DefaultPageContent

 before_action :set_copywrite

 def set_copywrite
    @copywrite = DevcompViewTool::Renderer.copywrite 'Compy Name', 'All rights Reserved'
 end
 
end


module DevcompViewTool
    class Renderer
        def self.copywrite name, msg
            "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
        end
    end
end