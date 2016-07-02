$(document).ready(function() {
    function getCookie(name) {
        var cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    var csrftoken = getCookie('csrftoken');


    function csrfSafeMethod(method) {
        // these HTTP methods do not require CSRF protection
        return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
    }

    $.ajaxSetup({
        beforeSend: function(xhr, settings) {
            if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
                xhr.setRequestHeader("X-CSRFToken", csrftoken);
            }
        }
    });

    var commentSectionElement = $("#comments-section");
    var commentCreateFormElement = $(commentSectionElement).find("form");
    var commentCreateFormInputContentElement = $(commentCreateFormElement).find("input[name='content']");

    var commentsListElement = $(commentSectionElement).find("ul");

    var commentCountElement = $(commentSectionElement).find("#comments-count");
    var postSlug = $(commentSectionElement).data("post-slug");
    var commentAPIUrl = "/api/post/" + postSlug + "/";

    commentCreateFormElement.submit(function() {
        var content = {
            "content": $(commentCreateFormInputContentElement).val()
        };

        $.ajax({
            url: commentAPIUrl,
            type: "POST",
            data: content, 
            success: function(data) {
                var commentUsername = data.username;
                var commentContent = data.content;
                
                // Append Comment List
                var commentData = commentUsername + ": " + commentContent;
                var commentListElement = $("<li>").text(commentData);
                $(commentsListElement).append(commentListElement);

                // Update Comments Count
                var commentCount = $(commentCountElement).html();
                var newCommentCount = Number(commentCount) + 1;
                $(commentCountElement).html(String(newCommentCount));

                $(commentCreateFormInputContentElement).val("");
            },
            error: function(error) {
                console.log(error);
            }
        });

        return false;
    });
});
