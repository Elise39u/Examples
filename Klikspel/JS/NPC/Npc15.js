var Npcname = "Sales Expert Elsie";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Elsie and i am 21 years old  <br> " +
        "I have completed my master in salesand lived in Breda <br> " +
        "I moved to new york because of my new study but i wished i never would";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well..... Mehhh. <br>" +
                    "Can i trust you really <br>" +
                    "Because i need someone that i can trust </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Yes_Ofcourse: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well i have nothing <br>" +
                                "So bye</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                  Okey: function () {$(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_new_york: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i like newyork <br>" +
                    "The city is nice to see and shop in and have a nice view from my apprtment<br>" +
                    "There is nothing to complain but the outbreak yaks</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Well_should_i_live_here: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well only if the outbreak is over  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
                    }
                })},
            Well_Bye: function () {$(this).dialog('close');}
        },
        title: "Conversation",
        position: {
            my: "left center",
            at: "left center"
        }
    });
    $( "#opener-2" ).click(function() {
        $( "#dialog-2" ).dialog( "open" );
    });
});