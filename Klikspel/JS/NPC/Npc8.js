var Npcname = "photographer Mike";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Mike I used to photograph the nature  <br> " +
        "But with the outbreak that was kind of difficult <br> " +
        "So i ran away to here with some other people";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I have two things for you <br>" +
                    "You can choos one or two </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    One: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well i am need of something for my work  <br>" +
                        "If you can find a camera i will reward you with a key to the rest of you`re ship <br>" +
                            "Do we have a deal</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Okey Come back to me when you have it  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest Picture Smile');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            Hell_no: function () {$(this).dialog('close');}
                        })},
                    two: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well can you find a scropion <br>" +
                            " I want to make a picture of that animal</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey_ehh: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Okey come back When you know it  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest On the Hunt');
                                                $(this).dialog('close');}
                                        }
                                    })},
                                You_know_they_are_monsters: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Yes Yes Yes know hurry  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            Okey_easy: function () {$(this).dialog('close');}
                                        }
                                    })},
                            },
                            nope: function () {$(this).dialog('close');}
                        })},
                }
            })},
            Why_Pohotgrapher: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i was obbesed with nature <br>" +
                    "So why not make pictures of it <br>" +
                    "Even make a living now so </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Is_it_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> That depends on you  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            Well_bye_and_no_picture: function () {$(this).dialog('close');}
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