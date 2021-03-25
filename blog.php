<?php
//関数一つに一つの機能をもたせる
//①データベース接続
//②データを取得する
//③カテゴリー名を表示させる


//①データベース接続
//引数:接続するだけなのでなし
//返り値:接続結果を返す

function dbConnect(){
    $dsn = 'mysql:host=localhost;dbname=blog_app;charest=utf8';
    $user = 'blog_user';
    $pass = '9907Ayumi';
try {
    $dbh = new PDO($dsn,$user,$pass,[
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,

]);

}catch(PDOException $e){
    echo '接続が失敗です'. $e->getMessage();
    exit();
};
return $dbh;

}

//②データを取得する
//引数:なし
//返り値:なし

function getAllBlog (){
    $dbh = dbConnect();
    //①sql文の準備
    $sql = 'SELECT * FROM blog';
    //②sqlの実行
    $stmt = $dbh->query($sql);
    //③sqlの結果を受け取る
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
    $dbh = null;
}
//取得したデータを表示
$blogData = getAllBlog ();

//③カテゴリーを表示
function setCategoryName($category){
    if ($category === '1'){
        return 'ブログ';
    }else if ($category === '2'){
        return '日常';
    }else {
        return 'その他';
    }
}

?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ブログ一覧</title>
</head>
<body>
    <h2>ブログ一覧</h2>
    <table>
        <tr>
            <th>No</th>
            <th>タイトル</th>
            <th>カテゴリ</th>
        </tr>
        <?php foreach($blogData as $column): ?>
        <tr>
            <td><?php echo $column['id']?></td>
            <td><?php echo $column['title']?></td>
            <td><?php echo setCategoryName($column['category'])?></td>
            <td><a href="./detail.php?id=<?php echo $column['id'] ?>">詳細</a></td>

        </tr>
        <?php endforeach; ?>

    </table>

</body>
</html>
