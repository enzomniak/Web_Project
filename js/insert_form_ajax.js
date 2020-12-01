{
    loadPrograms();
    function loadPrograms(){
        let school_id = document.getElementById("school").value;

        console.log(school_id);

        let xhr = new XMLHttpRequest();
        xhr.open("GET", `../php/get_programs.php?school_id=${school_id}`, true);
        xhr.onload = function(){
            if(this.status == 200){
                console.log(this.responseText);
                let programs = JSON.parse(this.responseText);
                let output = "";
                for(let i in programs){
                    output +=
                    `<select>
                        <option>${programs[i].ProgramName}</option>
                    </select>`
                }
                document.getElementById("program").innerHTML = output;
            }
        };
        xhr.send();
    }
}