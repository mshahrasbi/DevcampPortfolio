module SetSource
    extend ActiveSupport::Concern

    # concerns allow us to include before filters...
    included do
        before_action :set_source
    end
    
    def set_source
        session[:source] = params[:q] if params[:q]
     end
end