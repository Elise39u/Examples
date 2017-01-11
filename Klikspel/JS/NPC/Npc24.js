var Npcname  = "Singer Gorden";
var Npcname1 = "Singer Gerard";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: We are SIngers Geer en Goor  <br> " +
        " At least not so goor as you  <br> " +
        " Wahahahahhahh  <br>" +
        "So we stayed at the hotel for a concert in the city";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Wwell maby you could give gerard a new voice men. <br>" +
                    Npcname1 + " Whahwahwha at leats better then you`re haircut <br>" +
                    Npcname + " As the say in franche touchée </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_help_or_not: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well no . i dont have anything to do <br>" +
                                Npcname1 + " hold on maby that voice of you ghghhghgh <br>" +
                                "Maby look around so you find anyone </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So good luck </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             thank_you: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Singing: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> WEll first you need the voice  to sing <br>" +
                    " Second a pair of good looks and stumb buddy as Gerard   <br>" +
                    Npcname1 + " Wahwhaawh Says you mr.fashion ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_Is_it_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Depends Stagefair  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> No </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Nope: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
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