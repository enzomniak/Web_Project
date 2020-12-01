{
    //Get all input elements that have the same class
    let x = document.getElementsByClassName("digitNum");
    //Get each input element from the HTML collection
    for (var i = 0; i < x.length; i++) {
        let element = x[i];
        //Add event listener to all elements in this class
        x[i].addEventListener('keyup', (event) =>{
            //Get key pressed
            const key = event.key;
            //Get current number slot
            currentDigit = parseInt(element.id.replace("digit",""));
            //Check if it's an integer
            if(parseInt(key) && currentDigit<10){
                //Move the cursor forward
                currentDigit++;
                //Jump to the next number
                document.getElementById("digit"+currentDigit).focus();
                //Replace number
                document.getElementById("digit"+currentDigit).onfocus = document.getElementById("digit"+currentDigit).select();
            }
            //If user press Backspace we want the cursor to jump back
            else if(key == "Backspace" && currentDigit>1){
                //Move the cursor back
                currentDigit--;
                //Jump to the next number
                document.getElementById("digit"+currentDigit).focus();
                //Replace number
                document.getElementById("digit"+currentDigit).onfocus = document.getElementById("digit"+currentDigit).select();
            }
            //Check if user input a letter instead of number
            else if(key.length == 1 && key.match(/[a-z]/i)){
                window.alert("Please, Enter a number");
                console.log("NOT INT");
            }
        });
    }
}