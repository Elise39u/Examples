var Npcname  = " Gothic Kids ";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well we are the Gothic kids <br>" +
        "We just want the world black and black only <br>" +
        "So go away";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Okeyyyy_Help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Black World Please</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhhhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Now are you gonna do it  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Nope: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So sad   </p>")
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
           So_tell_more_about_gothic: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Black sad and NO </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee_Okey: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Only if you want to join </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well yes or no </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                No_Never: function () {$(this).dialog('close');},
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