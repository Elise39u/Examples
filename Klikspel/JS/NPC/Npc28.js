var Npcname  = "Student Dylan";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well i am Dylan and i am 21 years old <br>" +
        "I started at davinci college in 2016 Setpmber and almost finshed <br>" +
        "I was here in New york for my last gratute stage so this is unforantly";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ..... excatlly </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Now: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> No i am a student what do you expect </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Well: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> NOPE </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             okey: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_how_is_collega: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well think about it<br>" +
                    " Stupid friends espcilly that Justin  and a school that nothing can   <br>" +
                    " So how do you think </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_good: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Yeah you`re right </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well what <br>" +
                                            "So you not my friend </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Nothing_bye: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Bye: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_Bad: function () {$(this).dialog('close');}
                    }
                })},
            Goodbye: function () {$(this).dialog('close');}
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