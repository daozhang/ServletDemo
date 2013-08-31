$(function() {
    $(".control_select").mouseover(function() {
        $(this).find(".cs_content").show();
    });
    $(".control_select").mouseout(function() {
        $(this).find(".cs_content").hide();
    });
});