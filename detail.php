<?php


$id = $_GET['id'];

if(empty($id)){
    exit('idが不正です。');
}

function dbConnect(){
    $dsn = 'mysql:host=localhost;dbname=blog_app;charest=utf8';
    $user = 'blog_user';
    $pass = '9907Ayumi';
try {
    $dbh = new PDO($dsn,$user,$pass,[
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_EMULATE_PREPARES => false,

]);

}catch(PDOException $e){
    echo '接続が失敗です'. $e->getMessage();
    exit();
};
return $dbh;

}
$dbh = dbConnect();

//SQLを準備
$stmt = $dbh->prepare('SELECT * FROM blog Where id = :id');
$stmt->bindValue(':id',(int)$id, PDO::PARAM_INT);


//SQLを実行
$stmt->execute();

//結果を取得
$result = $stmt->fetch(PDO::FETCH_ASSOC);
if(!$result){
    exit('ブログがありません。');
}

?>


<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ブログ詳細</title>
</head>
<body>
   <h2>ブログ詳細</h2>
   <h3>タイトル:<?php echo $result['title'] ?></h3>
    <p>投稿日時:<?php echo $result['post_at'] ?></p>
    <p>カテゴリ:<?php echo $result['category'] ?></p>
    <hr>
    <p>本文:<?php echo $result['content'] ?></p>
</body>
</html>
