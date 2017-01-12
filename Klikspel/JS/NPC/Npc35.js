var Npcname = "Teacher Eduwan";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well Are you here for class <br>" +
        "Well Just a Joke i am Eduwan And i am a teacher for 5 years now <br> " +
        " So what are you doing here if i can ask?";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Any_help_Needed: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Let me think about that</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Andd: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> No i dont have anything </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Now go just go  </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Well_Okey: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Tell_More_About_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well .... Serious</p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> You spoke to teachers already <br>" +
                                " So why should i tell you more </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Now then </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Bye: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_Bye: function () {$(this).dialog('close');}
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