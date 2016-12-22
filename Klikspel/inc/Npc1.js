var numberStart = 145971;
var NpcName = "John";

window.onload = function StartConverstation() {
    var Key = "unfriendly-John";

    document.getElementById('Bio').innerHTML = "BIO: I am John <br>" +
        "i lived here for years and nothing would stop me <br> " +
        "And i will  never leave the city <br>" +
        "Not even by a zombie out break";
    if (numberStart == 145971) {
        document.getElementById('NPC').innerHTML = "" +
            NpcName + ": What do you want";
        document.getElementById('Player3').innerHTML = "Do you need help with something";
        document.getElementById('Player4').style.display = 'none';
        document.getElementById('Player5').style.display = 'none';
    }
};

function myAns1() {
    document.getElementById('NPC').innerHTML = NpcName + ": No i am not the cipier";
    startOver();
}

function myAns2() {
    document.getElementById('NPC').innerHTML = NpcName +  ": You have eyes go look for it";
    startOver2();
}

function myAns3() {
    document.getElementById('Player1').style.display = 'none';
    document.getElementById('Player2').style.display = 'none';
    document.getElementById('Player5').style.display = 'none';
    document.getElementById('Player4').style.display = 'none';
    document.getElementById('NPC').innerHTML = NpcName +  ": Well i am in need of some items <br>" +
    "Perhaps that you can help me";
    startOver3();
}

function startOver() {
    document.getElementById('Player1').style.display = 'none';
    document.getElementById('Player2').style.display = 'none';
    document.getElementById('Player4').style.display = 'none';
    document.getElementById('Player5').style.display = 'none';
    document.getElementById('Player3').style.display = 'block';
    document.getElementById('Player3').innerHTML = "Ow okey thanks for the information";
}

function startOver2() {
    document.getElementById('Player1').style.display = 'none';
    document.getElementById('Player2').style.display = 'none';
    document.getElementById('Player3').style.display = 'none';
    document.getElementById('Player5').style.display = 'none';
    document.getElementById('Player4').style.display = 'block';
    document.getElementById('Player4').innerHTML = "Ow srry";
}

function myAns4() {
    document.getElementById('NPC').innerHTML = NpcName + ": Whawhwah No thanks dork";
}

function myAns5() {
    document.getElementById('NPC').innerHTML = NpcName + ": Stupid idiot";
}

function startOver3() {
    document.getElementById('Player3').innerHTML = "What do you want " + NpcName;
}