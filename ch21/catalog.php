<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>	
  <body bgcolor="lightyellow">
    <table border="0" align="center" width="800" cellspacing="2"> 
      <tr bgcolor="#BABA76" height="30" align="center">
        <td>飲品</td>
        <td>品項</td>
        <td>定價</td>
        <td>註記</td>
        <td>甜度</td>
        <td>冰度</td>        
        <td>輸入數量</td>
        <td>進行訂購</td>																
      </tr>
        <?php
          require_once("dbtools.inc.php");
		  
          //建立資料連接
          $link = create_connection();
							
          //開啟資料表
          $db_selected = mysql_select_db("drinks", $link);
          if (!$db_selected) die("開啟資料庫失敗");
							
          //篩選出所有產品資料
          $sql = "SELECT * FROM drinkdata";
          $result = execute_sql("drinks", $sql, $link);
						
          //計算總記錄數
          $total_records = mysql_num_rows($result);
									
          //列出所有產品資料
          for ($i = 0; $i < $total_records; $i++)
          {
            //取得產品資料
            $row = mysql_fetch_assoc($result);
									
            //顯示產品各欄位的資料
            echo "<form method='post' action='add_to_car.php?drink_id=" . 
              $row["drink_id"] . "&drink_name=" . urlencode($row["drink_name"]) . 
              "&drink_cost=" . $row["drink_cost"] . "'>";
            echo "<tr align='center' bgcolor='#EDEAB1'>";
            echo "<td>" . $row["drink_name"] . "</td>";	
            echo "<td>" . $row["drink_type"] . "</td>";		
            echo "<td>$" . $row["drink_cost"] . "</td>";	
            echo "<td>$" . $row["Remark"] . "</td>";
            echo"<td><input type ='radio' name='suger' value='無糖' checked>無糖";
            echo"<input type ='radio' name='suger' value='微糖'>微糖";
            echo"<input type ='radio' name='suger' value='半糖'>半糖";
            echo"<input type ='radio' name='suger' value='少糖'>少糖";
            echo"<input type ='radio' name='suger' value='正常'>正常</td>";
            echo"<td><input type ='radio' name='ice' value='去冰' checked>去冰";
            echo"<input type ='radio' name='ice' value='微冰'>微冰";
            echo"<input type ='radio' name='ice' value='半冰'>半冰";
            echo"<input type ='radio' name='ice' value='少冰'>少冰";
            echo"<input type ='radio' name='ice' value='正常'>正常</td>";
            
            echo "<td><input type='text' name='quantity' size='5' value='1'></td>";
            echo "<td><input type='submit' value='放入購物車'></td>";
            echo "</tr>";
            echo "</form>";
          }
									
          //釋放資源及關閉資料連接
          mysql_free_result($result);
          mysql_close($link);					
        ?>
    </table>
  </body>                                                                                 
</html>