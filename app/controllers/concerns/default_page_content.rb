module DefaultPageContent
    extend ActiveSupport::Concern 
    
    # concerns allow us to include before filters...
    included do
        before_action :set_page_default
    end
 
    def set_page_default
        @page_title = 'Devcamp Portfolio | My Portfolio website'
        @seo_keyword = 'Jordan Hudgens portfolio'
    end
    
end