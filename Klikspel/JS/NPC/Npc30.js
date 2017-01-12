var Npcname  = "Electrician teacher Edwin ";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi There i am Edwin and i am a teacher <br>" +
        "I teached Kids For Electrician for a decaeed of 2,5  <br>" +
        "Now i am stuck here well the world is great here he ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Excuallty if i now think about it </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_And: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well i dont need anything  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Maby someone else needs help  </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             I_am_Looking: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_teaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Yes it not the kind of teaching <br>" +
                    "  I am teached the nievau two of davinci in there traniee envoriment <br>" +
                    " Futher i teach math on davinci </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_is_it_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well depends on you  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    What: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Do you want to teach <br>" +
                                            " And let pubers try to listen to you</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Nope: function () {$(this).dialog('close');},
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