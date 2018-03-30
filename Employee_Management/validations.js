function submitvalidate() {
    ValidateEndDate();
    ValidateEmail();
    chkpassword();
    checkphone();
    checkpin()
    
}

function ValidateEndDate() {
    var dateofbirth = document.getElementById('dtdob').value;
    var mybirthdate = new Date(dateofbirth);
    var dateofjoin = document.getElementById('dtdoj').value;
    var myjoindate = new Date(dateofjoin);
    if (mybirthdate >= myjoindate) {
        alert('Date of Birth should be older than Date of Joining');
        return false;
    }
    return true;
}

function ValidateEmail() {
    var str = document.getElementById('txtemail').value;
    if (str.length == 0) {

        return false;
    }
        var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
        if (filter.test(str))
            return true;
        else{
            alert("Please input a valid email address!")
            return false;
        }
       
    }
  
  

function chkpassword() {
    var pass = document.getElementById('txtpassword').value;
    var cpass = document.getElementById('txtconfirmpassword').value;
    if (pass == cpass) {
        return true;
    }
    else {

        alert('Password and Confirm Password do not match');
        return false;
    }
}

function checkphone() {
    var presentmob = document.getElementById('txtpresentmobile').value;
    var presentphone = document.getElementById('txtpresentprimaryno').value;
    var permanentmob = document.getElementById('txtpermanentmobile').value;
    var permanentphone = document.getElementById('txtpermanentprimaryno').value;
    if (presentmob.length == 0) {
        return false;
    }
    var reg = /^[0-9,\b]+$/;
    if (reg.test(presentmob) || reg.test(permanentmob) || reg.test(permanentphone) || reg.test(presentphone))
        return true;
    else {
        alert("Please input a valid number!")
        return false;
    }
}

function checkpin() {
    var presentpin = document.getElementById('txtpresentpincode').value;
    var permanentpin = document.getElementById('txtpermanentpincode').value;
    
    if (presentpin.length == 0) {
        return false;
    }
    var reg = /^[0-9-\b]+$/;
    if (reg.test(presentpin) || reg.test(permanentpin))
        return true;
    else {
        alert("Please input a valid pincode!");
        
        return false;
    }
}
