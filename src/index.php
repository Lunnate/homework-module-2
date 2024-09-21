<html lang="en">

<head>
  <title>Random countries [by a-evdokimov]</title>
  <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>
  <div style="width: 50%; margin: auto;">
    <h1>Random countries</h1>
    <table>
      <tr>
        <th>country</th>
        <th>capital_city</th>
        <th>population</th>
      </tr>
      <?php
      $mysqli = new mysqli("database", "user", "password", "databased");
  
      $result = $mysqli->query("SELECT * FROM regions ORDER BY population DESC") or die(mysqli_error($mysqli));
      foreach ($result as $row) {
        echo "
      <tr>
        <td>{$row['country']}</td>
        <td>{$row['capital_city']}</td>
        <td>{$row['population']}</td>
      </tr>
      ";
      } ?>
    </table>
  </div>
  <?php
  phpinfo();
  ?>
</body>

</html>
