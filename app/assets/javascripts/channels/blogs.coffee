
jQuery(document).on('turbolinks:load', ->
    comments = $('#comments')
    if comments.length > 0
        App.global_chat = App.cable.subscriptions.create {
            channel: "BlogsChannel"
            blog_id: comments.data('blog_id')
        },
        connected: -> 
        disconnectd: ->
        received: (data) -> 
            comments.apend data['comment']
        send_comment: (comment, blog_id) ->
            @perform 'send_comment', comment: comment, blog_id: blog_id
    $('#new_comment').submit (e) ->
        $this = $(this)
        textarea = $this.find('#comment_content')
        if $.trim(textarea.val()).length > 1
            App.global_chat.send_comment textarea.val(),  comments.data('blog_id')
            textarea.val('')
        e.preventDefault()
        return false