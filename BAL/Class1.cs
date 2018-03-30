using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class Class1
    {
    }

    public class BAL
    {
        private string _firstName, _middleName, _lastName;
        private string _emailId;
        private string _gender;
        private DateTime _dateofBirth, _dateofJoining;
        private string _employeeType, _employeeStatus;
        private byte _photo, _sign;
        private string _username, _password;
        private string _presentAddress1, _presentAddress2, _presentAddress3;
        private string _presentCountry, _presentState, _presentDistrict;
        private string _presentPincode, _presentPrimaryno, _presentMobile;
        private string _permanentAddress1, _permanentAddress2, _permanentAddress3;
        private string _permanentCountry, _permanentState, _permanentDistrict;
        private string _permanentPincode, _permanentPrimaryno, _permanentMobile;

        public BAL(string firstname)
        {
            this._firstName = firstname;
        }


       
        public string getFirstName()
        {
            return _firstName;
        }

        public string getMiddleName()
        {
            return _middleName;
        }

        public string getLastName()
        {
            return _lastName;
        }

        public string getEmailId()
        {
            return _emailId;
        }

        public string getGender()
        {
            return _gender;
        }

        public DateTime getDateofbirth()
        {
            return _dateofBirth;
        }

        public DateTime getDateofjoining()
        {
            return _dateofJoining;
        }

        public string getEmployeetype()
        {
            return _employeeType;
        }

        public string getEmployeestatus()
        {
            return _employeeStatus;
        }

        public byte getphoto()
        {
            return _photo;
        }

        public byte getsign()
        {
            return _sign;
        }

        public string getusername()
        {
            return _username;
        }

        public string getpassword()
        {
            return _password;
        }

        public string getpresentaddress1()
        {
            return _presentAddress1;
        }

        public string getpresentaddress2()
        {
            return _presentAddress2;
        }

        public string getpresentaddress3()
        {
            return _presentAddress3;
        }

        public string getpresentcountry()
        {
            return _presentCountry;
        }

        public string getpresentstate()
        {
            return _presentState;
        }

        public string getpresentdistrict()
        {
            return _presentDistrict;
        }

        public string getpresentpincode()
        {
            return _presentPincode;
        }

        public string getpresentprimaryno()
        {
            return _presentPrimaryno;
        }

        public string getpresentmobile()
        {
            return _presentMobile;
        }


        public string getpermanentaddress1()
        {
            return _permanentAddress1;
        }

        public string getpermanentaddress2()
        {
            return _permanentAddress2;
        }

        public string getpermanentaddress3()
        {
            return _permanentAddress3;
        }

        public string getpermanentcountry()
        {
            return _permanentCountry;
        }

        public string getpermanentstate()
        {
            return _permanentState;
        }

        public string getpermanentdistrict()
        {
            return _permanentDistrict;
        }

        public string getpresentpincode()
        {
            return _permanentPincode;
        }

        public string getpresentprimaryno()
        {
            return _permanentPrimaryno;
        }

        public string getpresentmobile()
        {
            return _permanentMobile;
        }


        public void register(BAL firstname, BAL middlename)
        {
            // create an object of DAL
            // use obj.add (values of the fields)

        }

    }
}
