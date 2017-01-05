var Npcname = "DataTracker harems";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Harrems i teach DataIt on davinci  <br> " +
        "I was here only on holiday but never thought of this <br> " +
        "Will we get home sometimes";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Yes i need more pc  <br>" +
                    "I am tracking data so i can see if someone from the outworld wants to visit us<br>" +
                    "Maby thats called stalking </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Where_can_i_find_this: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> As i speak right there is a elector store in the city <br>" +
                                "Maby you should look there as i speak</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  Okey: function () {
                                      alert('You started the quest Data is nut');
                                      $(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i a part of if you like it <br>" +
                    "With that i mean if you like the job you do it better and quicker <br>" +
                    "but if you hated but you have talented then you`re maby right  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Do_you_think_i_am_talented: function () {
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
            Well_bye: function () {$(this).dialog('close');}
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