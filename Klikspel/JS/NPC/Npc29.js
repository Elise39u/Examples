var Npcname  = "Students Sanne en Robin";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well We are Sanne and Robin and both are we 22 years old <br>" +
        " We studied on the davinci college in holland in the  place gorinchm <br>" +
        " it was a mehhhhh school but what did you expect";

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