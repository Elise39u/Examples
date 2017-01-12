var Npcname  = "Students Sanne en Robin";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well We are Sanne and Robin and both are we 22 years old <br>" +
        " We studied on the davinci college in holland in the  place gorinchm <br>" +
        " it was a mehhhhh school but what did you expect";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Let us think for a minute </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Now we dont have anything for you <br>" +
                                "Or perhaps some coffee  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Well: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Ahhh even let than go </p>")
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
           So_how_is_school: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well think about it<br>" +
                    " We dont have to do anything can go out of class when we want    <br>" +
                    " So Best fun is it </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_good: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Thats right excatlly  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    What: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well ........ <br>" +
                                            "No you`re right </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Nope: function () {$(this).dialog('close');},
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