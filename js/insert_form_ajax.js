{
    //Confirming dialog
    function confirmSubmit(){
        let x = document.getElementsByTagName("input");
        let y = document.getElementsByTagName("select");
        console.log(x);
        console.log(y);
        let inputList = `
Student ID: ${x[0].value}
Prefix: ${x[1].value}
First Name: ${x[2].value}
Last Name: ${x[3].value}
School: ${y[0].options[y[0].selectedIndex].text}
Program: ${y[1].options[y[1].selectedIndex].text}
Dean: ${x[4].value}
Advisor: ${x[5].value}
GPAX: ${x[6].value}
Status: ${y[2].options[y[2].selectedIndex].text}
ReturnYear: ${x[7].value}
AbsenceYear: ${x[8].value}`;
        return confirm(inputList);
    }

    //AJAX part
    loadPrograms();
    //Get programs
    function loadPrograms(){
        let school_id = document.getElementById("school").value;
        let xhr = new XMLHttpRequest();
        xhr.open("GET", `../php/get_programs.php?school_id=${school_id}`, true);
        xhr.onload = function(){
            if(this.status == 200){
                console.log(this.responseText);
                let response = JSON.parse(this.responseText);
                let outputPro = "";
                for(let i in response){
                    outputPro +=
                    `<select>
                        <option value="${response[i].ProgramID}">${response[i].ProgramName}</option>
                    </select>`
                }
                document.getElementById("program").innerHTML = outputPro;
                document.getElementById("show_dean").innerText = response[0].DeanName;
                //Set Dean value
                document.getElementById("dean").value = response[0].DeanID;
            }
        };
        xhr.send();
    }

    //Used in the form_input php
    function fillInForm(){
        let name = document.getElementById("name_txt").value;
        let fullName = "";
        let tempNumber = 1;
        let xhr = new XMLHttpRequest();
        xhr.open("GET", `../php/fill_in_form.php?name=${name}`, true);
        xhr.onload = function(){
            if(this.status == 200){
                console.log(this.responseText);
                let response = JSON.parse(this.responseText);
                // console.log(response[0].StudentID[0]);

                //Get StudentID from the database into boxes in form page
                for(let i in response[0].StudentID){
                    document.getElementById("digit"+tempNumber).value = response[0].StudentID[i];
                    tempNumber++;
                    // console.log(i);
                }

                //Set full name
                fullName += response[0].FirstName+" "+response[0].LastName;
                document.getElementById("name_txt").value = fullName;

                //Get all other data
                document.getElementById("phone").value = response[0].MobilePhone;
                // document.getElementById("name_txt").value = newName;
                // document.getElementById("name_txt").value = newName;

            }
        };
        xhr.send();
    }
}
