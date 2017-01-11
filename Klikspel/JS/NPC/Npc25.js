var Npcname  = "Chef Hans";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well a stranger <br> " +
        " Hi i am chef of the kitchen and my name is hans  <br> " +
        " I served this hotel sinds it has been build and i am close with Anna  <br>" +
        "We are deep friends when we stared this hotel";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well let me think about it..... <br>" +
                    " Maby can you bring me a cooking nife </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Where: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well maby you can try the prison kichten <br>" +
                                " Elsse try one of the many shops around <br>" +
                                "So ..... </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So good luck </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             thank_you: function () {
                                                 alert('You started the quest Hey Appel KNIFE');
                                                 $(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_a_chef: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> WEll First you need to cook and i meant GOOD cooking <br>" +
                    " Then you`re try to be along the best chefs and devolp you`re skills   <br>" +
                    " And keep learing and improveing is the most important part </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_Is_it_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Depends do you like food </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well go cooking Friend </p>");
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