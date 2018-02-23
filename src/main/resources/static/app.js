function validate() {
	var name = document.getElementById("name").value;
	if (name == '') {
		alert('Please enter a valid city.');
		return false;
	} else {
		return true;
	}
}