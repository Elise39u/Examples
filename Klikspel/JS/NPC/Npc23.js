var Npcname = "Hotel Owner Anna";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Anna <br> " +
        " I strted this hotel 18 years ago and it growed to the biggest one in the city  <br> " +
        " I refuse to leave my city <br>" +
        "So you can leave unless you have something to ask";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well no maby you can try later on <br>" +
                    "Or not want i want to retire </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Do you know a place to retire <br>" +
                                "Is it safe </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 No: function () {
                                     $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Really </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             yes: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
            How_is_youre_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i am working wiith power and cables al day<br>" +
                    "Benefits are working in the outside air and short work days  <br>" +
                    " Its always one man per job <br>" +
                    "So is it fun mehhh..... </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_DO_you_recommend_it: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well are you can a cabel man  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'>  Now go for it then </p>");
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