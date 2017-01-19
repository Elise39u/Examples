var Npcname = "Coach Jeroen";

/*
 A_Book: function () {
 $( "#Story" ).replaceWith("<p id='Story'> Well The grand hotel is in the city behind the mall <br>" +
 "maby there are still people there <br>" +
 "Mine room is 506 maby it lies in Marieke rooms that is 508</p>");
 $('#dialog-2').dialog({
 autoOpen: true,
 width: 600,
 buttons: {
 A_hotel: function () {
 $( "#Story" ).replaceWith("<p id='Story'> Yes come back to me with the book  </p>");
 $('#dialog-2').dialog({
 autoOpen: true,
 width: 600,
 buttons: {
 sure: function () {
 alert('You started the quest Coaching a book');
 $(this).dialog('close');}
 }
 })},
 },
 I_dont_know_where_it_is: function () {$(this).dialog('close');}
 })},
 */
$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Jeroen and i was on holliyday with Coach Marieke here in new york  <br> " +
        "After we left davinci we said together lets go on a trip <br> " +
        "so we went to londen, Tortno and now we are here <br>" +
        "We have regrat that we went to new york at this time";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I have two things <br>" +
                    "Can you find a book in my stuff at the grand hotel or <br>" +
                    "Take me with you to the school in the city </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        A_Book: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well The grand hotel is in the city behind the mall <br>" +
                                "maby there are still people there <br>" +
                                "Mine room is 506 maby it lies in Marieke rooms that is 508</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    A_hotel: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yes come back to me with the book  </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            width: 600,
                                            buttons: {
                                                sure: function () {
                                                    alert('You started the quest Coaching a book');
                                                    $(this).dialog('close');}
                                            }
                                        })},
                                },
                                I_dont_know_where_it_is: function () {$(this).dialog('close');}
                            })},
                    }
                })},
            Why_Coaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i dont coach alone i even teach IT <br>" +
                    "i loved teaching kids en helping others <br>" +
                    "Now i can only coach  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Is_There_something_to_learn_for_me: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well Maby a trip to school  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey_Sure: function () {$(this).dialog('close');}
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