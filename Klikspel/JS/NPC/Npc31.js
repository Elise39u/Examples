var Npcname  = "Art teacher Christina ";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well a stranger come along i dont bite <br>" +
        "I am the Art teacher on this school and my name is Christina  <br>" +
        " Well with the outbreak there is not my Art left in the city <br>" +
        "So i try to keep it alive but thats gonna get diffcult ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> No i just want to make art</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Sure: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Yes well kind that you asked  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Yeah GO now  </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Easy: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_teaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Yes Art is not that good to teach <br>" +
                    "You can judge only on the thencique en not on the art it self <br>" +
                    "Well can we ask  why that person choose this kind of art </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_Really: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Yeah maby you can collect some art stuff at the art shop <br>" +
                                "On the other side of the subbase  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> if you do that i will reward you  <br>" +
                                            " With something </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {
                                                    alert('You started the quest Art Skills?');
                                                    $(this).dialog('close');},
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