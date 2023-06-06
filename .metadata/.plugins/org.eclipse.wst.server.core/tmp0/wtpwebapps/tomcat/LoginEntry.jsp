<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ログイン</title>
</head>
<body>
  <form method="post" action="LoginController">
    <p>名前を入力してください</p>
    <input type="text" name="ninsyoName">
    <p>パスワードを入力してください</p>
    <input type="password" name="ninsyoPassword"><br><br>
    <input type="submit" value="ログイン">
  </form>
</body>
</html>
