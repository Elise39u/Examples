var Npcname  = "Coach Corine";

$(function() {
    document.getElementById('Bio').innerHTML = "Well i am Corine <br>" +
        "I started Coaching on davinci so about a year ago <br>" +
        " Well i loved to help pepole evole in there own skill <br>" +
        "But get on holliday with Coach Marieke and Jeroen was a bad idea <br>" +
        "i wonder how they are doining";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well In my hotel room 510 Lies my stuff of my conversations with students <br>" +
                    " It wil be real nice if you get those back<br>" +
                    "If you that i can start coaching agian </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Do_i_need_a_key: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well ...... No <br>" +
                                " but dont look in room 506 and 508 those are of Marieke and Jeroen </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Well: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Go </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey: function () {
                                                 alert('Started the Quest Restarting Coaching');
                                                 $(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           Well_Coaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ...... <br>" +
                    " It was like i needed to explore it  <br>" +
                    " So i discoverd more and more that i liked coaching <br>" +
                    " You know this song <a href='https://www.youtube.com/watch?v=nx4x1-5V01g its great'> Later als ik groter ben</a> <br>" +
                    "I courrige you to listen to it and follow it</p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_Why: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Because Do what you like <br>" +
                                "Dont listen to others if you have a better choice enzv.  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Okey: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Belive you would be thank full </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Bye: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
                    }
                })},
            Well_they_are_safe: function () {
                $( "#Story" ).replaceWith("<p id='Story'> Ahhhh thank you for the information <br>" +
                    "I really want to know that </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey: function () {$(this).dialog('close');},
                    },
                })}
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