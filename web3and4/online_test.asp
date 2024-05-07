<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cat Lover Not?</title>
    <script src="./main.js"></script>
    <script src="./timer.js"></script>
    <style>
        nav {
            background-color: pink;
            position: sticky;
            top: 0px;
        }
    </style>
</head>
<body>
    <%
set conn = Server.CreateObject("ADODB.Connection")
conn.Provider = "Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\inetpub\wwwroot\lab3and4\score.mdb"

sql = "INSERT INTO score (s_name)"  
sql = sql & "VALUES"
sql=sql & "('" & Request.Form("username") & "',"

on error resume next
conn.Execute sql,recaffected

if err<>0 then
    Response.Write("No update permissions!")
else
    Response.Write("<h3>" & recaffected & " record added</h3>")
end if
    conn.close

%>
    <nav>
        <div id="Timer" style="text-align: center;"></div>
        <!--<div id="Stop" onclick="clearInterval(timerV)">Stop(click submit button)</div>-->
    </nav>
    <form name="answer">
    <h3>The Breeds</h3>
    <p>Select the correct cat breed according to the given photo.<br>
        <ol>
            <li><br><img src="Australian Mist.jpg"/><br>
                <input type="radio" name="breed1" value="American Wirehair"/>
                <label>American Wirehair</label><br>
                <input type="radio" name="breed1" value="American Shorthair"/> 
                <label>American Shorthair</label><br>
                <input type="radio" name="breed1" value="Australian Mist"/>
                <label>Australian Mist</label><br>
            </li>
            <li><br><img src="American Curl.jpg"/><br>
                <input type="radio" name="breed2" value="Asian"/>
                <label>Asian</label><br>
                <input type="radio" name="breed2" value="American Curl"/>
                <label>American Curl</label><br>
                <input type="radio" name="breed2" value="Arabian Mau"/>
                <label>Arabian Mau</label><br>
            </li>
        </ol>
    </p>
    <br>
    <h3>The Behaviour</h3>    
    <p>Select the correct answers based on the given description.<br>
        <ol>
            <li>The reason of the cat to sniff your face is because:<br>
                <input type="checkbox" name="behaviour11" value=/>
                <label>They are trying to commit your scent to memory.</label><br>
                <input type="checkbox" name="behaviour12" value=/>
                <label>Cats rely heavily on their strong sense of smell.</label><br>
                <input type="checkbox" name="behaviour13" value=/>
                <label>It helps them build trust and familiarity.</label><br>
            </li>
            <li>What does it mean when the cats slow blink to you? <br>
                <input type="checkbox" name="behaviour21"/>
                <label>They are comfortable in your presence and enjoy your company.</label><br>
                <input type="checkbox" name="behaviour22"/>
                <label>It is an invitation for petting and snuggles.</label><br>
                <input type="checkbox" name="behaviour23"/>
                <label>It is a sign of sharing affection.</label><br>
            </li>
        </ol>
    </p>
    <br>
    <h3>Watch Out The Cats!</h3>
    <img src="The Cats.jpg" style="width:430px; height:275x;"/>
    <p>
        <ol>
            <li>There are how many cats in the garden? <br>
                <input type="text" name="Watch1" value="" size="32"/>
            </li>
            <li>What is the colour of the cats? <br>
                <input type="text" name="Watch2" value="" size="23"/>
            </li>
            <li>Any suggestions for the game on my website?<br>
                FYI this question does not allocate points.<br>
                <textarea name="Opinion" rows="2" cols="43"></textarea>
            </li>
        </ol>
    </p>
    <br>
        <input type="button" id="Result" value="Submit" onclick="calculate()"/>
    
    </form>
</body>

</html>


