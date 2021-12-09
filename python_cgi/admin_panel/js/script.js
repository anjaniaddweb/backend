function validation(){
    var name=document.getElementById('name').value;
    var email=document.getElementById('email').value;
    var password=document.getElementById('password').value;
    var confirm_password=document.getElementById('confirm_password').value;
    var mobile=document.getElementById('mobile').value;

    var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/

    if(name==""){
        document.getElementById('name_span').innerHTML="** Please fill the name";
        return false;
    }
    if(name.length <= 2 || name.length >= 40){
        document.getElementById("name_span").innerHTML ="** Name length must be between 2 to 40";
        return false;
    }

    if(email==""){
        document.getElementById('email_span').innerHTML="** Please fill the email ID";
        return false;
    }
    if(!reg.test(email)){
        document.getElementById('email_span').innerHTML="** Please Enter valid email ID";
        return false;
    }

    if(password==""){
        document.getElementById('password_span').innerHTML="** Please fill the password";
        return false;
    }

    if (!(password.match(/[a-z]/g) 
        && password.match(/[A-Z]/g) 
        && password.match(/[0-9]/g) 
        && password.match(/[^a-zA-Z\d]/g) 
        && password.length >= 8)){
            document.getElementById('password_span').innerHTML="** please Enter password minimum 8 characters which contain at least one numeric digit, special character, one uppercase and one lowercase letter ";
            return false;
        }

    if(confirm_password==""){
        document.getElementById('confirm_password_span').innerHTML="** Please fill the confirm password";
        return false;
    }

    if(password != confirm_password){
        document.getElementById('confirm_password_span').innerHTML="** Please enter the same password";
        return false;
    }

    if(mobile==""){
        document.getElementById('mobile_span').innerHTML="** Please fill the mobile";
        return false;
    }
    if(isNaN(mobile)){
        document.getElementById("mobile_span").innerHTML = "** please enter only digits";
        return false;
    }
    if(mobile.length!=10){
        document.getElementById('mobile_span').innerHTML="** Please enter only 10 digits";
        return false;
    }

}