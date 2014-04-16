<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <style>
            .head{
                text-align: center;
            }

            #firstTable{
                column-width: 500px;
                color: red;
                text-align: center;

            } 
            .select{
                width: 150px;
                height: 300px;
            }
            td{
                padding: 15px;
                height:15px;
                text-align: center;
            }
            .div{
                width: 500px;
                margin-right: auto;
                margin-left: auto;
                
            }
            .TableAlignCenter{
                 margin-right: auto;
                margin-left: auto;
            }

        </style>
        <meta charset="UTF-8">
        <title>Head</title>
    <div class="head">    
        <h1 >HEAD </h1></div>
</head> 
<body>
    <div class="div">
        <table class="TableAlignCenter">
        <tr>
            <td>Source1</td>
            <td>Source2</td>
        </tr>
        <tr>
            <td>
                <select class="select"  id="firstTable" name="listname" multiple="multiple">
                    <option>Table1</option>
                    <option>Table2</option>
                    <option>Table3</option>
                    <option>Table4</option>
                    <option>Table5</option>
                </select>
            </td><td>
                <select class="select" id="firstTable" name="listname" multiple="multiple">
                    <option>Table1</option>
                    <option>Table2</option>
                    <option>Table3</option>
                    <option>Table4</option>
                    <option>Table5</option>
                </select>
            </td>
        </tr>

    </table>
        <div style="text-align: center;margin-right: auto;
                margin-left: auto;"> <input  type ="button" onclick="" value="View" /></div>
    </div>
</body>
</html>
