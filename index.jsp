<%@page language="java" import="java.sql.*" %>
<html>
<head>
<script>        
function dispdatetime()
{	
    var date = new Date();
    minutes=date.getMinutes();
    hours=date.getHours();
    seconds=date.getSeconds();
    var time=hours+":"+minutes+":"+seconds;
    document.getElementById("datetime").innerHTML=time; 
}
    setInterval(dispdatetime,1000);
function displaysong()
{
    var searchbutton=document.getElementById("search").value;
    var obj=new XMLHttpRequest();
    obj.onreadystatechange=function()
    {
        if((obj.readyState==4) && (obj.status==200))
        {
             document.getElementById("musiccontainer").innerHTML=obj.response;
        }
     }
     obj.open("GET","searchsong.jsp?Song="+searchbutton,true);
     obj.send();
    }
</script>
<title>MUSIC MANIA</title>
<style>
a
{
       color:white;
        font-size: 16px;
        margin-right: 3%;
        text-decoration: none;
        float: right;
        font-family:serif;
}
a:hover
{
    background-color: white;
    color: blue;
}
header
{
    background-color: rgba(0,0,179,0.4);
    height: 20%;
    width: 100%;
    text-align: center;
    font-family:fantasy;
    font-weight: bold;
    color: white;
    font-size: 400%;
}
#search_btn
{
    background-color:white;
    float: left;
    color: blue;
    height: 140%;
    width: 10%;
    margin-left: 1%;
    margin-top: 1%;     
    align-self: center;
    border:groove;
    border-radius: 40%;
    font-size: 18px;
    box-shadow: 1px 1px;
    font-family:monospace;
    font-weight:bold;
    vertical-align: middle;
}
#search
{
    width:60%;
    height: 50px;
    font-size: 18px;
    border: 1px solid #ddd;
    margin-left: 5px;
    margin-top: 1%;
    float: left;
    border-radius: 10px 10px 10px 10px;
}
#searchbox
{
    width: 50%;
    float: left;
    margin-left: 1%;
    height: 50%;
}
#datetime
{
    color: white;
    background-color: black;
    width: 99%;
    height: 30px;
    align-content: 15%;
    font-size: 20px;
    text-align:right;
}
#musiccontainer
{
    height: 100%;
    width: 100%;
    margin-top: 2%;
    background-color:rgba(0,0,179,0.1);
}
#songs
{
    height: 400px;
    width: 14%;
    margin-left: 20px;
    margin: 30px;
    float: left;
    background-color: dodgerblue;
    box-shadow: 10px 10px 10px;
    padding: 20px;
}
h1
{
    text-align: center;
}

    #menu
    {
        background-color: rgba(0,0,179,1);
        height: 6%;
        width: 100%;
    }
    audio
    {
        align-self: center;
        border: 1px solid darkblue;
        border-radius: 30%;
        margin: -10%;
        width: 232px;
        margin-top: 2%;
    }
    img
    {
        width: 100%;
    }
 
    body
    {
        height: 150%;
        width: 100%;
    }
</style>
</head>
<body onload="dispdatetime()">
    <header><h1>MUSIC MANIA</h1>
    </header>
    <div id="menu">  <div id="searchbox" onkeypress="displaysong()">
            <input type="text" id="search" placeholder="Search by category :  title,music,movie,artist,singer ...."/>
            <input id="search_btn" type="button" value="SEARCH" onclick="displaysong()" />
    </div><div id="icon"></div><a href="about.html"><h2>About</h2></a>  <a href="contact.jsp" ><h2>Contact Us</h2></a>   <a href="loginn.html"><h2>Login</h2></a> <a id="col" href="index.jsp"><h2>Home</h2></a></div>
        <div id="musiccontainer"> 
             <div id="songs">
                 <img src="tumkoDekha.jpg" style="width: 100%" ><hr>
                    <audio id="ListenLive" controls  >
                    <source src="Tumko_Dekha_To_Jagjit_Singh.mp3" type="audio/mpeg">
                 </audio>
            </div>
             <div id="songs">
                 <img src="crop_175x175_1534758492.jpg" style="width: 100%" ><hr>
                    <audio id="ListenLive" controls  >
                    <source src="DEKHTE%20DEKHTE%20Full%20Song%20Lyrics%20_%20Atif%20Aslam%20_%20Dekhte%20Dekhte%20Lyrics.mp3" type="audio/mpeg">
                 </audio>
            </div>
            <div id="songs">
            <img src="rabba.jpg"><hr>
                 <audio id="ListenLive" controls >
                     <source src="02%20Rabba%20(SongsMp3.Com).mp3" type="audio/mpeg">
                </audio>
            </div>
            <div id="songs">
            <img src="crop_175x175_1537454644.jpg" ><hr>
            <audio id="ListenLive" controls >
                <source src="Loveratri.mp4" type="audio/mpeg">
                </audio>
            </div> 
            <div id="songs">
            <img src="bomdiggy.jpg" ><hr>
            <audio id="ListenLive" controls >
                <source src="Bom Diggy - Zack Knight 190Kbps.mp3" type="audio/mpeg">
                </audio>
            </div> 
             <div id="songs">
            <img src="badri.jpg" ><hr>
            <audio id="ListenLive" controls >
                <source src="Badri_Ki_Dulhani.mp3" type="audio/mpeg">
                </audio>
            </div>
            
        </div>
<br> </body>
    <footer id ="datetime"></footer>
   
</html>