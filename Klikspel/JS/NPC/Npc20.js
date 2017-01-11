var Npcname = "Alco";
var Npcname1 = "Kevin";
var Npcname2 = "Bram";
var Npcname3 = "Arija";
var Npcname4 = "Justin";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well We are Bakfiest <br>" +
        "We started teh group because ...... wat it was doenst mather <br>" +
        "And rember #Justinlifematters ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Well_breda: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well only a few of us went there <br>" +
                    Npcname4 + " Thats is correct only me and Alco and Arija <br>" +
                    Npcname3 + " what are we talking about <br>" +
                    Npcname1 + " You dindt say it was cheap <br>" +
                    Npcname2 + " Well i dont care <br>" +
                    Npcname + " if you did go with us we looked for a more nicer hotel <br>" +
                    "Because this one was skeer <br>" +
                    Npcname4 + Npcname3 + " Well thats true</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_MonsterNon_asked_me: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Shieetttttttt <br>" +
                                Npcname2 + " You know monsternon is Alco <br>" +
                                Npcname1 + " Kerel and Justin Hjb <br>" +
                                Npcname  + " yes Justin hjb <br>" +
                                Npcname4 + " Well no -.- <br>" +
                                Npcname3 + " comon guys not so neagtive <br>" +
                                Npcname2 + Npcname1 + Npcname + Npcname4 +" Just no Arija never <br>" +
                                Npcname3 + " Okey then</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                 Okey: function () {$(this).dialog('close');},
                                },
                            })},
                    }
                })},
            Well_why_bakfiets: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well thats a good question <br>" +
                    Npcname3 + " Its Was a fun name <br>" +
                    Npcname4 + " Well alco en kevin came with it <br>" +
                    Npcname + Npcname1 + " Thats is true and Justin Hjb <br>" +
                    Npcname2 + " Whahahahhah <br>" +
                    Npcname4 + " No Just never -.-</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Can_i_join: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Nehhh  <br>" +
                                Npcname1 + " Nope <br> " +
                                Npcname2 + " You know lingling <br>" +
                                Npcname3 + " Nope <br>" +
                                Npcname4 + " Nope <br>" +
                                Npcname + Npcname1 + " Justin Hjb and #Justinlifematters <br>" +
                                Npcname4 + " Kill me please</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                   Well_Bye: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_bye: function () {$(this).dialog('close');}
                    }
                })},
            Wel_Bye_freaks: function () {$(this).dialog('close');}
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