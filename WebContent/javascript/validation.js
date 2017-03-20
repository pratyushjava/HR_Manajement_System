function validate(form)
{

var f_name=document.sampleform.f_name.value;
var l_name=document.sampleform.l_name.value;
var password=document.sampleform.password.value;
var fname=document.sampleform.fname.value;
var dob=document.sampleform.dob.value;
var mobile=document.sampleform.mobile.value;
var landline=document.sampleform.landline.value;
var email1=document.sampleform.email1.value;
var email2=document.sampleform.email2.value;
var add1=document.sampleform.add1.value;
var city=document.sampleform.city.value;
var pincode=document.sampleform.pincode.value;
var state=document.sampleform.state.value;
var nationality=document.sampleform.nationality.value;
var ssc_yoa=document.sampleform.ssc_yoa.value;
var ssc_yop=document.sampleform.ssc_yop.value;
var ssc_sch_name=document.sampleform.ssc_sch_name.value;
var ssc_board=document.sampleform.ssc_board.value;
var ssc_sch_percent=document.sampleform.ssc_sch_percent.value;
var hsc_yoa=document.sampleform.hsc_yoa.value;
var hsc_yop=document.sampleform.hsc_yop.value;
var hsc_sch_name=document.sampleform.hsc_sch_name.value;
var hsc_board=document.sampleform.hsc_board.value;
var hsc_sch_percent=document.sampleform.hsc_sch_percent.value;
var g_branch=document.sampleform.g_branch.value;
var g_yoa=document.sampleform.g_yoa.value;
var g_yop=document.sampleform.g_yop.value;
var g_coll_name=document.sampleform.g_coll_name.value;
var g_university=document.sampleform.g_university.value;
var g_percent=document.sampleform.g_percent.value;
var skills=document.sampleform.skills.value;

var alphaExp = /^[a-zA-Z]+$/;
var alphaspaceExp = /^[a-zA-Z ]+$/;
var digitsExp = /^[0-9]+$/;
var percentageExp =  /^[0-9][0-9]\.[0-9][0-9]$/;
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;


if(f_name=="")
{alert("enter your first name");document.sampleform.f_name.focus();return false;}
if(!f_name.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.f_name.focus();return false;}
if(l_name=="")
{alert("enter your last name");document.sampleform.l_name.focus();return false;}
if(!l_name.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.l_name.focus();return false;}
if(password=="")
{alert("enter your password");document.sampleform.password.focus();return false;}
if(fname=="")
{alert("enter your father name");document.sampleform.fname.focus();return false;}
if(!fname.match(alphaspaceExp))
{alert("only Alphabets and Spaces are allowed in father name");document.sampleform.fname.focus();return false;}
if(dob=="")
{alert("enter your date of birth");document.sampleform.dob.focus();return false;}
if(mobile=="")
{alert("enter your mobile number");document.sampleform.mobile.focus();return false;}
if(!mobile.match(digitsExp)|| mobile.length != 10)
{alert("enter valid mobile number");document.sampleform.mobile.focus();return false;}
if(landline=="")
{alert("enter your landline number");document.sampleform.landline.focus();return false;}
if(!landline.match(digitsExp))
{alert("only digits ars allowed");document.sampleform.landline.focus();return false;}
if(landline.length < 11 && landline.length > 15)
{alert("enter valid landline number ");document.sampleform.landline.focus();return false;}
if(email1=="")
{alert("enter your primary email id");document.sampleform.email1.focus();return false;}
if(!email1.match(emailExp))
{alert("enter valid email id");document.sampleform.email1.focus();return false;}
if(email2 != "")
{
if(!email2.match(emailExp))
{alert("enter valid email id");document.sampleform.email2.focus();return false;}
}
if(add1=="")
{alert("enter your address1 field ");document.sampleform.add1.focus();return false;}
if(city=="")
{alert("enter your city ");document.sampleform.city.focus();return false;}
if(!city.match(alphaExp))
{alert("only alphabets are allowed in city ");document.sampleform.city.focus();return false;}
if(pincode=="")
{alert("enter your pincode ");document.sampleform.pincode.focus();return false;}
if(!pincode.match(digitsExp) || pincode.length != 6 )
{alert("enter valid pincode ");document.sampleform.pincode.focus();return false;}
if(state=="")
{alert("enter your state ");document.sampleform.state.focus();return false;}
if(!state.match(alphaspaceExp))
{alert("only alphabets and spaces are allowed in state ");document.sampleform.state.focus();return false;}
if(nationality=="")
{alert("enter your nationality ");document.sampleform.nationality.focus();return false;}
if(!nationality.match(alphaExp))
{alert("only alphabets are allowed in nationality ");document.sampleform.nationality.focus();return false;}
if(ssc_yoa == "" )
{alert("enter your year of applying in 10th ");document.sampleform.ssc_yoa.focus();return false;}
if(ssc_yoa < 1920 || ssc_yoa > 2011 )
{alert("enter valid year of applying in 10th ");document.sampleform.ssc_yoa.focus();return false;}
if(ssc_yop=="")
{alert("enter your year of passing in 10th ");document.sampleform.ssc_yop.focus();return false;}
if(ssc_yop < 1920 || ssc_yop > 2011 || ssc_yoa > ssc_yop)
{alert("enter valid year of passing in 10th ");document.sampleform.ssc_yop.focus();return false;}
if(ssc_sch_name=="")
{alert("enter your 10th school name ");document.sampleform.ssc_sch_name.focus();return false;}
if(!ssc_sch_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th school name ");document.sampleform.ssc_sch_name.focus();return false;}
if(ssc_board=="")
{alert("enter your 10th board name");document.sampleform.ssc_board.focus();return false;}
if(!ssc_board.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th board name");document.sampleform.ssc_board.focus();return false;}
if(ssc_sch_percent=="")
{alert("enter your 10th percentage ");document.sampleform.ssc_sch_percent.focus();return false;}
if(!ssc_sch_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.ssc_sch_percent.focus();return false;}
if(hsc_yoa=="")
{alert("enter your year of applying in 12th ");document.sampleform.hsc_yoa.focus();return false;}
if(hsc_yoa < 1920 || hsc_yoa > 2011)
{alert("enter valid year of applying in 12th ");document.sampleform.hsc_yoa.focus();return false;}
if(hsc_yop=="")
{alert("enter your year of passing in 12th  ");document.sampleform.hsc_yop.focus();return false;}
if(hsc_yop < 1920 || hsc_yop > 2011 || hsc_yoa > hsc_yop)
{alert("enter valid year of passing in 12th  ");document.sampleform.hsc_yop.focus();return false;}
if(hsc_sch_name=="")
{alert("enter your 12th school name ");document.sampleform.hsc_sch_name.focus();return false;}
if(!hsc_sch_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th school name ");document.sampleform.hsc_sch_name.focus();return false;}
if(hsc_board=="")
{alert("enter your 12th board name ");document.sampleform.hsc_board.focus();return false;}
if(!hsc_board.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th board name ");document.sampleform.hsc_board.focus();return false;}
if(hsc_sch_percent=="")
{alert("enter your 12th percentage ");document.sampleform.hsc_sch_percent.focus();return false;}
if(!hsc_sch_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.hsc_sch_percent.focus();return false;}
if(g_branch=="")
{alert("enter your branch in graduation");document.sampleform.g_branch.focus();return false;}
if(!g_branch.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation branch");document.sampleform.g_branch.focus();return false;}
if(g_yoa=="")
{alert("enter your year of applying in graduation ");document.sampleform.g_yoa.focus();return false;}
if(g_yoa < 1920 || g_yoa > 2011)
{alert("enter valid year of applying in graduation ");document.sampleform.g_yoa.focus();return false;}
if(g_yop=="")
{alert("enter your year of passing in graduation ");document.sampleform.g_yop.focus();return false;}
if(g_yop < 1920 || g_yop > 2011 || g_yoa > g_yop)
{alert("enter valid year of passing in graduation ");document.sampleform.g_yop.focus();return false;}
if(g_coll_name=="")
{alert("enter your graduation college name ");document.sampleform.g_coll_name.focus();return false;}
if(!g_coll_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation college name ");document.sampleform.g_coll_name.focus();return false;}
if(g_university=="")
{alert("enter your graduation university ");document.sampleform.g_university.focus();return false;}
if(!g_university.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation university ");document.sampleform.g_university.focus();return false;}
if(g_percent=="")
{alert("enter your graduation percentage ");document.sampleform.g_percent.focus();return false;}
if(!g_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places  ");document.sampleform.g_percent.focus();return false;}
if(skills=="")
{alert("enter your skills ");document.sampleform.skills.focus();return false;}

}