var Npcname = "Monsternon";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well i am famous youtuber Monsternon  <br> " +
        "I was here on holliyday and that was afwull i tell you <br> " +
        "Well maby you are one day join BAKFIEST and dont forget JUSTINNNNNNNNNNNNNNN";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well..... Go find Bakfiest group <br>" +
                    "Ask them about breda they will love it.<br>" +
                    "Dont forget to say to justin hjb </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Where_are_they: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> i belive in the school <br>" +
                                "Well says to justin HJB he</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  yeah_sure: function () {
                                      alert('You started the quest #Bakfiest For Leader');
                                      $(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_youtube: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well BULLSHIT <br>" +
                    "Stupid banners ,tumbnails, enzv. <br>" +
                    "but thanks to bakfiest i keep going JUSTINNNNNNNNNNNNNN  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Do_you_think_i_can_do_youtube: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well no....  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            Well_Never_heard_of_you: function () {$(this).dialog('close');}
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