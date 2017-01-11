var Npcname  = "Teacher Imre";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well a new slaf <br> " +
        " Hi i am teacher Imre And i teach kids all albout russia  <br> " +
        " Form swearing to squad like a true slaf my friend  <br>" +
        " So are you here to for the lesson take place then ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Do you wan to leran how to slaf <br>" +
                    " Or perhaps you`re not a true russian </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well maby you can try begin to slaf like true slaf <br>" +
                                " or else you dont want to be a russian slaf </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Well: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well what slaf </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             no: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Russian_teacher: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Yess my friend <br>" +
                    " But you gotta know that only true russians kan pass   <br>" +
                    " So once a slaf always a slaf </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_Is_it_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Depends on the students i get </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Students: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yess only motvaited slafs can come in <br>" +
                                            "So you not my friend </p>");
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