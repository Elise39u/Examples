var Npcname = "Wachter Maxine ";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Maxine and i am 19 years old  <br> " +
        "I moved to new york because of my new study english study <br> " +
        "I loved New york  sso i choose this place as study <br>" +
        "Well i wished i never had done that";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well..... i have two things <br>" +
                    "But i prefere that you have a older person with you.<br>" +
                    "Because i dont trust you alone with kids</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        What_do_i_have_to_do: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well go look for a treat for the kids <br>" +
                                "If you come back to me with a treat i wil reward you with some info</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  Where_can_i_find_this: function () {
                                      $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Were are you waiting for <br>" +
                                          "And yes look in the supermarkt or the candy store</p>");
                                      $('#dialog-2').dialog({
                                          autoOpen: true,
                                          buttons: {
                                              Okey: function () {
                                                  alert('You started the quest Treat time');
                                                  $(this).dialog('close');},
                                          },
                                      })},
                                },
                            })},
                        Well_okey_then: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Come back to me with a older person <br>" +
                                "Else you wont get this quest</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Okey_See_you_Soon: function () {$(this).dialog('close');},
                                },
                            })}
                    }
                })},
            How_is_wachting_kids: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well its nice and Fun and the time goes away <br>" +
                    "you really need to have fun while working with kids else this job is nothing <br>" +
                    "So do you like kids or not </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        yes: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ever did it or not?  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> So then maby you should try it </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Nope_sorry: function () {$(this).dialog('close');}
                                }
                            })},
                        Nope: function () {$(this).dialog('close');}
                    }
                })},
            Bye_Bye: function () {$(this).dialog('close');}
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