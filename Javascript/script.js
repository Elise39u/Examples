// Function that checks the number of characters and change the h1 tag with the title id
function substitute() {
	// seeks what is entered in the textbox
	var myValue = document.getElementById('myTextBox').value;

	/* Look how many characters in it
	At 0 give an error with the string
	At 1 or higher go through the code
	*/
	if (myValue.length == 0) {
		alert("Enter a real value please");
		return;
	}

	// changed the h1 tag with what was entered in the textbox
	var myTitle = document.getElementById('title');
	myTitle.innerHTML = myValue;
}
	// What counts 8 x 9 = and pops it into an alert
	var SomeValue = 8;
		var SomeValue2 = 9;
		var Z = SomeValue2 * SomeValue;
		alert(Z);

	// Escaping Strings
	var hello = "My \" love life \"is ruined.";
	alert(hello);

	// Checking value with if en else
	var One = 12;
	var Two = 35;

	if(One > 30 && Two > 30) {
		alert("Its bigger then 30");
	}

	else if(One < 20 && Two < 20) {
		alert("its Less then 20")
	}

	else {
		alert("The number is between 20 and 30")
	}

// Swicht statment to work
var rightNow = new Date();
var currentHour = rightNow.getHours();
switch(true)
{
	case(currentHour > 6 && currentHour < 12):
	document.write("Good morning my Friend");
	break;

	case(currentHour > 12 && currentHour < 18):
	document.write("Good midday my Friend");
	break;

	case(currentHour > 18 && currentHour < 24):
	document.write("Welcome to the afternoon my Friend");
	break;

	case(currentHour > 0 && currentHour < 6):
	document.write("Good night you sleepy head");
	break;
}