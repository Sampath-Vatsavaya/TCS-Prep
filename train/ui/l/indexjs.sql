const form = document.querySelector("#form");
const usermsg = document.querySelector("#usermsg");
const usernamefield = document.querySelector("#username");
const passwordfield= document.querySelector("#password");
const confirmpasswordfield= document.querySelector("#cpassword");
const mail= document.querySelector("#mail");
const mobile= document.querySelector("#mobile");
const aadhaar= document.querySelector("#aadhaar");




function verifyPassword(password) {
 
}

function checkUsername(username) {
  return username.length > 6;
}



function checkmobile(mobile) {
  let regex = new RegExp(/[6-9][0-9]{9}/);
  return regex.test(mobile);
}

function checkaadhaar(aadhaar) {
  let regex = new RegExp(/[0-9]{12}/);
  return regex.test(aadhaar);
}

function checkEmail(email) {
    let regex = new RegExp(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.com$/);
    return regex.test(email);
  }
  
// passwordfield.addEventListener("click",(e)=>{
//     const pwdmsg= document.querySelector("#pwdmsg");
//     pwdmsg.innerHTML=`<p id= 'char'>Contains atleast 8 characters </p>
//                        <p id='up'>Contains atleast 1 Upper Character </p>
//                       <p id='num'> Contains atleast 1 number </p>
//                       <p id='spec'> Contains atleast 1 Special Character </p> `
//     pwdmsg.classList.add("text-muted")
// })
form.addEventListener("keyup",(e)=>{
    let target=e.target;
    if(target.id==="username")
    {
                const usermsg = document.querySelector("#usermsg");
        usermsg.style.display = "block";
        usermsg.innerHTML = `Username Should Have At Least 6 Characters`;
        if (e.target.value.length < 6) {
            usermsg.classList.add("text-danger")
        } else {
            usermsg.style.display = "none"; 
        }
            }
   
    if(target.id==="password")
    {   const pwdmsg= document.querySelector("#pwdmsg");
        const pwd=target.value;
        const specialCharsRegex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?`~]/;
        errors=[]
        if (pwd.length<8){errors.push("Password Should Contain at least 8 Characters")  }
        if (pwd.search(/[A-Z]/) < 0) {
                errors.push("Your password must contain at least one upper letter.");
            }
            if (pwd.search(/[0-9]/) < 0) {
                errors.push("Your password must contain at least one digit."); 
            }
        if(!specialCharsRegex.test(pwd)){errors.push("Password should have atleast one special character")}
      pwdmsg.innerHTML=''
        errors.forEach((err)=>{pwdmsg.innerHTML+=`<p class='text-danger'>${err}</p>`})
    }

    if(target.id==="password")
    {

    }


    if(target.id==="cpassword"){
                const cpwdmsg= document.querySelector("#cpwdmsg");
                cpwdmsg.style.display="block";
                cpwdmsg.innerHTML="Passwords Do Not Match";
                
                if(target.value != passwordfield.value){
                    cpwdmsg.classList.add("text-danger")
                }
                else{
                    cpwdmsg.style.display="none";
                }
                
         }
   
    if(target.id==="mobile"){
        const mobilemsg= document.querySelector("#mobilemsg");
                mobilemsg.style.display="block";
                mobilemsg.innerHTML="Enter a Valid Mobile Number";
                
                if(!checkmobile(target.value)){
                    mobilemsg.classList.add("text-danger")
                }
                else{
                    mobilemsg.style.display="none";
                }
    }
   
    if(target.id==="aadhaar"){
        const aadhaarmsg= document.querySelector("#aadhaarmsg");
                aadhaarmsg.style.display="block";
                aadhaarmsg.innerHTML="Enter a Valid Aadhaar Number";
                
                if(!checkaadhaar(target.value)){
                    aadhaarmsg.classList.add("text-danger")
                }
                else{
                    aadhaarmsg.style.display="none";
                }
    }

    if(target.id==="mail"){
        const mailmsg= document.querySelector("#mailmsg");
                mailmsg.style.display="block";
                mailmsg.innerHTML="Enter a Valid Mail ID:";
                
                if(!checkEmail(target.value)){
                    mailmsg.classList.add("text-danger")
                }
                else{
                    mailmsg.style.display="none";
                }
    }
    
   
        })

form.addEventListener("click",(e)=>{
    if(e.target.id!="password")
        {
            const  pwdmsg= document.querySelector("#pwdmsg");
            pwdmsg.innerHTML=``
        }          
                }) 
// usernamefield.addEventListener("keyup", (e) => {
  
// });



// logger = () => {
//   let promptString = "";
//   if (!checkUsername(form.username.value)) {
//     promptString += "<strong>Username</strong>:<br>Username should have at least 6 characters";
//   }
//   if (!confirmPassword(form.password.value, form.cpassword.value)) {
//     promptString += "<br><strong>Mismatched Password:</strong><br>Both Passwords Should Match";
//   }
//   if (!checkmobile(form.mobile.value)) {
//     promptString += "<br><strong>Mobile Number:</strong><br>Enter a Valid Mobile Number";
//   }
//   if (!checkaadhaar(form.aadhaar.value)) {
//     promptString += "<br><strong>Aadhaar Number:</strong><br>Enter a Valid Aadhaar Number";
//   }
//   if (promptString !== "") {
//     promptString = "<strong>Invalid Details</strong><hr>" + promptString;
//     pop.innerHTML = `<p>${promptString}</p>`;
//     pop.innerHTML += `<br><input type='button' value='close' onclick='closepop()'>`;
//     pop.style.display = "block";
//   }
// };

// closepop = () => {
//   pop.style.display = "none";
// };