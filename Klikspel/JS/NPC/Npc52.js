var Npcname = "Coach Justin";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Justin and i am currently 18 years old <br>" +
        "I was on holiday here together with Marieke and Jeroen and Corine <br>" +
        "They invited me and thought well why no after so time <br>" +
        "and now i am stuck here at least knowing they are alive";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> I am 18 years old did you epexct something <br>" +
                    "Or not</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well_how_do_you_know: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> What know ??? </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 if_they_are_alive: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Ow that they called me after they arrived in the subbase <br>" +
                                         "But that was only Marieke and Jeroen Corine i dont know</p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Well_I_know: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> WEll tell me where aand perhaps you can bring me to her <br>" +
                                                     "And no not in love </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Well_she_is_in_the_school: function () {
                                                            $( "#Story" ).replaceWith("<p id='Story'> WEll Bring me there <br>" +
                                                                "i need to tell here Where Marieke and Jeroen are </p>");
                                                            $('#dialog-2').dialog({
                                                                autoOpen: true,
                                                                buttons: {
                                                                    Okey: function () {
                                                                        alert('You started the quest Reuinted once agian');
                                                                        $(this).dialog('close')}
                                                                }
                                                            })
                                                        },
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
           So_18_And_coaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> yeah i was learing Software development on davinci <br>" +
                    "And in my first year Marieke and Jeroen were studycoachs on my school <br>" +
                    "And thourgh out my childhood i loved psychologie and get in touch with people that were personal coaches <br>" +
                    "So its inspired me to start it to learn so i asked can i be a student of you`re party <br>" +
                    "They said come along on the trip and introduce me to Corine who is now the studycoach on davinci </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_student_coach: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Yeah i like helping people around <br>" +
                                "And can place me in other one his/her shoes so </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    so: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> yeah so i start a learing career by Marieke and Jeroen <br>" +
                                            "But on the outbreak i was here in the mall and they in the hotel</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Thats_sad: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Yeah i know but lucky they called <br>" +
                                                        "They know where i am and i know where they are</p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Okey_bye: function () {$(this).dialog('close')},
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