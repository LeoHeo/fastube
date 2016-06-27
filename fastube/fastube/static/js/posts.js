$(document).ready(function() {
    var commentSectionElement = $("#comments-section");
    var commentCreateFormElement = $(commentSectionElement).find("form");
    var commentCreateFormInputContentElement = $(commentCreateFormElement).find("input[name='content']");

    commentCreateFormElement.submit(function() {
        var content = $(commentCreateFormInputContentElement).val();
        alert(content);
        $(commentCreateFormInputContentElement).val("");

        return false;
    });
});
