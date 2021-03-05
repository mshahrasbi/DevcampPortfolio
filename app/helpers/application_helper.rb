module ApplicationHelper

    def simple_helper
        "<p>My Helper</p>".html_safe
    end

    def login_helper
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, method: :get) +
            "<br>".html_safe +
            (link_to "Login", new_user_session_path, method: :get)
        else
            link_to "Logout", destroy_user_session_path, method: :delete
        end
    end

    def source_helper(layout_name)
        if session[:source] 
            greeting =  "<hr>Thanks for visiting us from #{session[:source]} and you are in #{layout_name} layout"
            content_tag(:p, greeting, class: "source-greeting")
        end  
    end
end
