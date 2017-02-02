var Npcname = "Store Owner Esremalda";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well Well i am Esremalda <br>" +
        "I Owned a store for over the past 15 years and then they came <br>" +
        "They ruined everything and now i am stuck here <br>" +
        "At least i hope someone made it out alive";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            can_i_ask_they: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> yeah i dont want to talk about that <br>" +
                    "That bring bad memories back   </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Not_even_a_name: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> i think you know already who</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Welll: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> don`t be kidding  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             just_say_it: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'>Well the outbreak what did you expect </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Well: function () {$(this).dialog('close')}
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
           So_How_is_store_owner: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Wellllll....... </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_what: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well Its fun and you`re you own Boss <br>" +
                                "But its time consumeing</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    time_consuming: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well time consuming in takeing care of stuff</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Stuff_like: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Mailing serevers, communicating, Enzv. </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Okey: function () {$(this).dialog('close')},
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