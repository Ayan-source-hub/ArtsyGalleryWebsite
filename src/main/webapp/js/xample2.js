const container = document.getElementById('container');
const toLogin = document.getElementById('to-login');
const toRegister = document.getElementById('to-register');

toLogin.addEventListener('click', () => {
    container.classList.add("active");
});

toRegister.addEventListener('click', () => {
    container.classList.remove("active");
});


//test code
const formContainer = document.querySelector(".form-container")

formContainer.addEventListener("submit",(e)=>{
e.preventDefault()

const email = formContainer.email.value
const password = formContainer.password.value

const authenticated = authentication(email,password)

if(authenticated){
window.location.href = "xample3.html"
}else{
alert("wrong")
}
})

// function for checking username and password

function authentication(email,password){
if(email === "roy123456@gmail.com" && password === "password"){
return true
}else{
return false
}
}
