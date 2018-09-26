$(document).ready(function(){
    $("#refresh_button").click(function(){
        Rails.ajax( {
        type: "GET",
        dataType: "JSON",
        url: '/quotes/0',
        success: function(data) {
            $('#quote-title').text(data.title);
            $('#quote-content').text(data.content); 
            $('#quote-link').html('&nbsp;<a href="'+data.link+'" target="_blank">'+data.link+'</a>');         
        }
        });
    });
});