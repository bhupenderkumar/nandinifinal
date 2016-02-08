<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Nandini</title>
<meta name="viewport" content="width=device-width">
<style>
.btn-primary {
    border-color: #FF432E;
    background-color: #FeFeFe;
    text-transform: uppercase;
    font-weight: 300;
    text-decoration: none;
    font-family: cursive;
    font-size-adjust: inherit;
    margin-bottom:10ex; 
    margin-bottom: 26px;
}

.btn-primary:hover {
    border-color: #ccffff;
    background-color: #ccffff;
    text-transform: uppercase;
    font-weight: 300;
    font-style: oblique;
}

body{
background-color:skyblue;
}
table tr:nth-child(even) {
	background:skyblue;
	
}
table td:nth-child(odd) {
	background:white;
	
}
table th{
background:#11fff0;

}
.hoverTable{
		width:100%; 
		border-collapse:collapse; 
	}
	.hoverTable td{ 
		padding:7px; border:#ccffff 1px solid;
	}
	/* Define the default color for all the table rows */
	.hoverTable tr{
		background: #b8d1f3;
	}
	/* Define the hover highlight color for the table row */
    .hoverTable tr:hover {
          background-color: #ccffff;
    }


table {
    border-collapse: collapse;
}
table th {
font-color:white;
font-size:27;
}
.btn-primary {
    border-color: #FF432E;
    background-color: #FF432E;
    text-transform: uppercase;
    font-weight: 300;
}

.btn-primary:hover {
    border-color: white;
    background-color: white;
    text-transform: uppercase;
    font-weight: 300;
}
#infinity {
    position: relative;
    width: 5px;
    height: 5px;
     -webkit-animation:spin 4s linear infinite;
    -moz-animation:spin 4s linear infinite;
    animation:spin 4s linear infinite;
}
@-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
@-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
@keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }

#infinity:before,
#infinity:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 60px;
    height: 60px;
    border: 20px solid red;
    -moz-border-radius: 50px 50px 0 50px;
         border-radius: 50px 50px 0 50px;
    -webkit-transform: rotate(-45deg);
       -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
         -o-transform: rotate(-45deg);
            transform: rotate(-45deg);
}

#infinity:after {
    left: auto;
    right: 0;
    -moz-border-radius: 50px 50px 50px 0;
         border-radius: 50px 50px 50px 0;
    -webkit-transform: rotate(45deg);
       -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
         -o-transform: rotate(45deg);
            transform: rotate(45deg);
}
@-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
@-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
@keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
</style>
<script src="jquery.min.js" type="text/javascript"></script>
<script src="SecondJs.js" type="text/javascript"></script>
<body>
<div align="center" style="margin-top:15%">
<table >
<tr><td style="font-size: 25;font-family: serif;font-style: oblique;background-color:skyblue;font-style: italic;font-weight: 200;font-family: cursive; margin-right: 10px;">Get Value </td><td><select id="selectValue" style="font-size: 25;font-family: serif;font-style: oblique;width: 15em;margin-left: 3em" ><option >Select Value</option><%List<String> list=(List<String>)request.getAttribute("option"); 
for(String ss:list) {%><option><%=ss%></option><%} %></select></td></tr>
</table>


<input style="margin-top: 3em;" type="button" onclick="getValue();" class="btn-primary" value="Get Result">
<a href="index.html" style="text-decoration: none" class="btn-primary">Home</a>
</div>
<div align="center">
<div id="img" style="display:none;">
<div id="infinity" align="center" style="width: 2cm;height: 2cm"></div>
</div>
</div>

<br><br><br>
<div align="center" id="err" style="color:red;"></div>


<div id="table" style="display:block"><table align="center" class="hoverTable">
<tr><th>S.no</th><th>Items</th>
<th id="amount">Amount  </th>



<tr id="some"><tr><td>1</td><td>T.M.Ltr</td>
<td id="r1">0.0</td><tr><tr><td>2</td><td>T.M.Off</td>

<td id="r2">0.0</td></tr></tr><tr><tr><td>3</td><td>Std.Ltr.</td>
<td id="r3">0.0</td></tr><tr><tr><td>4</td><td>Std.Off</td>


<td id="r4">0.0</td></tr></tr><tr><tr><td>5</td><td>H.S.M .Ltr.</td>

<td id="r5">0.0</td></tr>
</tr><tr><tr><td>6</td><td>H.S.M. Off</td>

<td id="r6">0.0</td></tr></tr><tr><tr><td>7</td><td>Curd . Off</td>

<td id="r7">0.0</td></tr></tr><tr><tr><td>8</td><td>Curd 200MI</td>

<td id="r8">0.0</td></tr></tr><tr><td>9</td><td>B.T.M</td>

<td id="r9">0.0</td></tr></tr><tr><td>10</td><td>GHEE. litr</td>

<td id="r10">0.0</td></tr></tr><tr>
<td>11</td><td>GHEE. 500 M.I</td>

<td id="r11">0.0</td></tr></tr><tr><td>12</td><td>GHEE. 200 M.I</td>

<td id="r12">0.0</td></tr></tr><tr><td>13</td><td>GHEE. 100 M.I</td>

<td id="r13">0.0</td></tr></tr><tr><td>14</td><td>GHEE. 50 M.I</td>

<td id="r14">0.0</td></tr></tr><tr><td>15</td><td>GHEE .PPJ 1000MI</td>

<td id="r15">0.0</td></tr>
</tr><tr><td>16</td><td>GHEE .PPJ 500MI</td>

<td id="r16">0.0</td></tr></tr><tr><td>17</td><td>GHEE .PPJ 200MI</td>

<td id="r17">0.0</td></tr></tr><tr><td>18</td><td>Peda 250 G.ms</td>

<td id="r18">0.0</td></tr></tr><tr><td>19</td><td>Peda 100 G.ms</td>

<td id="r19">0.0</td></tr></tr><tr><td>20</td>
<td>Peda 10 G.ms</td>


<td id="r20">0.0</td></tr></tr><tr><td>21</td><td>Mysore Pk. 10Gms</td>

<td id="r21">0.0</td></tr></tr><tr><td>22</td><td>Mysore Pk. 250Gms</td>

<td id="r22">0.0</td></tr></tr><tr><td>23</td><td>S.F.M</td>

<td id="r23">0.0</td></tr></tr><tr><td>24</td><td>D.Peda</td>

<td id="r24">0.0</td></tr></tr><tr><td>25</td><td>Kunada @R</td>

<td id="r25">0.0</td></tr></tr><tr><td>26</td><td>B.P 500gms</td>

<td id="r26">0.0</td></tr></tr><tr><td>27</td><td>B.P 200gms</td>

<td id="r27">0.0</td></tr></tr>
<tr><td>28</td><td>B.P 10gms</td>
<td id="r28">0.0</td></tr></tr><tr><td>29</td><td>Jamun Mix 200 Gms</td>
<td id="r29">0.0</td></tr></tr><tr><td>30</td><td>P Mix</td>

<td id="r30">0.0</td></tr></tr><tr><td>31</td><td>Cove Jamun</td>

<td id="r31">0.0</td></tr></tr><tr><td>32</td><td>Rasgulla</td>

<td id="r32">0.0</td></tr></tr><tr><td>33</td><td>cashiw Barfi</td>

<td id="r33">0.0</td></tr></tr><tr><td>34</td><td>D fts,Barfi</td>

<td id="r34">0.0</td></tr></tr><tr><td>35</td><td>Cocnt. Barfi</td>

<td id="r35">0.0</td></tr></tr><tr><td>36</td><td>Bite</td>


<td id="r36">0.0</td></tr></tr><tr><td>37</td><td>Kunda</td>

<td id="r37">0.0</td></tr></tr><tr><td>38</td><td>Basan Lalddu</td>

<td id="r38">0.0</td></tr></tr></tr>


<tr><td>39</td><td>Pannir 100Gms.</td><

<td id="r39">0.0</td></tr></tr></tr>


<tr><td>40</td><td>Pannir 200Gms.</td>

<td id="r40">0.0</td></tr></tr></tr>


<tr><td>41</td><td>Goodlife 500 M. I.</td>

<td id="r41">0.0</td></tr></tr></tr>

<tr><td>42</td><td>Goodlife 200 M. I.</td>

<td id="r42">0.0</td></tr>





<tr><td>43</td><td>Goodlife Slim.</td>

<td id="r43">0.0</td></tr></tr></tr>

<tr><td>44</td><td>Butter 500 Gms.</td>

<td id="r44">0.0</td></tr></tr></tr>

<tr><td>45</td><td>Butter 200 Gms.</td>

<td id="r45">0.0</td></tr></tr></tr>

<tr><td>46</td><td>Butter 100 Gms.</td>

<td id="r46">0.0</td></tr></tr></tr>


<tr><td>47</td><td>D Whiterner 1Kg.</td>


<td id="r47">0.0</td></tr></tr></tr>


<tr><td>48</td><td>D Whiterner 500 Gms.</td>

<td id="r48">0.0</td></tr></tr></tr>


<tr><td>49</td><td>D Whiterner 200 Gms.</td>

<td id="r49">0.0</td></tr></tr></tr>


<tr><td>50</td><td>D Whiterner 40 Gms.</td>

<td id="r50">0.0</td></tr></tr></tr>



<tr><td>51</td><td>D Whiterner 20 Gms.</td>

<td id="r51">0.0</td></tr></tr></tr>

<tr><td>52</td><td>Cokes 150 Gms.</td>

<td id="r52">0.0</td></tr></tr></tr>


<tr><td>53</td><td>Cokes 100 Gms.</td>

<td id="r53">0.0</td></tr></tr></tr>

<tr><td>54</td><td>Cokes 10 Gms. </td>

<td id="r54">0.0</td></tr></tr></tr>

<tr><td>55</td><td>Cova 1Kg. </td>

<td id="r55">0.0</td></tr></tr></tr>



<tr><td>56</td><td>Chocklets 1Rs.</td>

<td id="r56">0.0</td></tr></tr></tr>


<tr><td>57</td><td>ChitChat 5Rs. </td>

<td id="r57">0.0</td></tr></tr></tr>



<tr><td>58</td><td>GoodLife 5Rs. </td>

<td id="r58">0.0</td></tr></tr></tr>



<tr><td>59</td><td>Cremebit chochleets 10Rs. </td>

<td id="r59">0.0</td></tr></tr></tr>

<tr><td>60</td><td>GoodLife 5Rs. </td>

<td id="r60">0.0</td></tr></tr></tr>



<tr><td>61</td><td>Goodlife 100 M. I.</td>

<td id="r61">0.0</td></tr></tr></tr>

<tr><td>62<td>Total Amount</td>

<td id="six">0.00</td></tr>


</table></div>
</body>
</html>