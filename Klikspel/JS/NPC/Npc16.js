var Npcname = "Student Ariëlle";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Ariëlle and i am 18 years old  <br> " +
        "I study graphic design on davinci in holland but was here on holliyday <br> " +
        "I now wished i never went to here on holliyday <br>" +
        "Maby my friends had better luck";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well..... Mehhh. <br>" +
                    "I dont need help.<br>" +
                    "I have not that much you know</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Are_you_sure: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well yeah so go now </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  Okey: function () {$(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_graphic_design: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well its nice and Fun <br>" +
                    "I only recommend it if you are a creative person <br>" +
                    "Because else i wont try it </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_How_do_i_no_if_i_am_creative: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well do you make a lot of things on you`re own  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yeah_i_make_things: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> So givie it a shot then </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    No_i_am_not: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
                    }
                })},
            Bye_Bye: function () {$(this).dialog('close');}
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