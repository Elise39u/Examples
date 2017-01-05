var Npcname = "Coach Marieke";
window.name = 'Marieke';

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Marieke and i was on holliyday with Coach Jeroen here in new york  <br> " +
        "After we left davinci we said together lets go on a trip <br> " +
        "so we went to londen, Tortno and now we are here <br>" +
        "We have regrat that we went to new york at this time";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I Want to help you <br>" +
                    "Because i think people around here needs coach <br>" +
                    "Belive me i think you can get a lot of more loss of people </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_come_along: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well What are you waiting for <br>" +
                                "We dont have al the time <br>" +
                                "So lets go </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  Yeay_a_buddy: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Yeah Yeah go now  </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey_Easy: function () {
                                                    alert('You started the quest Helping Hand');
                                                    $(this).dialog('close');}
                                            }
                                        })},
                                },
                                I_dont_want_company: function () {$(this).dialog('close');}
                            })},
                    }
                })},
            Why_Coaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i was al very comunicating when i was a kid <br>" +
                    "People came to with problems all the time <br>" +
                    "So i went to study social work and passed  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Is_There_something_that_you_want: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ... I cold not think of anything now  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            Well_i_dont_have_anything_to_say_Marieke: function () {$(this).dialog('close');}
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