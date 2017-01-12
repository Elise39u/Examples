var Npcname = "Director Kees";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there Stranger i am Kees <br>" +
        "I am The director of this school for over 15 years now <br>" +
        "I saw people go and saw people elove so i have seen much<br>" +
        "Not everything but this even.";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Not at this moment <br>" +
                    "I am too bizy at this moment</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhhhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well what are you still here  doning </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Nothing: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So ..... Just go   </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Well: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Tell_More_About_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Wich Job</p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> O wait <br>" +
                                "There is nothing to tell about too bad </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well indeed </p>");
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