var Npcname = "Singer Lucas";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well hi there i am Lucas <br>" +
        "I song in a Koor already for 15 years now <br>" +
        "We were stars for the church but once the outbreak canme <br>" +
        "We split up and i ended in this church i don`t know how the rest has made it ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well actually </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well: function () {
                            $( "#Story" ).replaceWith("<p id='Story'>No i dont need help at all </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 No_even_a_little_bit: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Nope not even a little bit  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_then: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Well what did you expect  </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Okey: function () {$(this).dialog('close')}
                                                     }
                                                 })
                                             },
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_How_is_Singing: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well there is not too much to say about it <br>" +
                    "Only passion, voice, audience</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Wel_why_those_3: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> the voice depends if you can sing <br>" +
                                "The passion for the like of the job and as final: <br>" +
                                "audience is the one you need to win for a job as singer</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    So_any_tips: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Depends on it </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Depends: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> yeah what for tips do you want <br>" +
                                                        "Name suggestions</p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well_anything_then: function () {
                                                                $( "#Story" ).replaceWith("<p id='Story'>No then i dont gonna give tips <br>" +
                                                                    "Maby someone else will</p>")
                                                            $('#dialog-2').dialog({
                                                                autoOpen: true,
                                                                buttons: {
                                                                    Well: function () {$(this).dialog('close')}
                                                                }
                                                            })},
                                                        },
                                                    })},
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