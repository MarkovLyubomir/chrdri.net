<?php
    include('db.php');

    $result = $db->query("SELECT id, title FROM articles");
    $articles = $result->fetch_all();

    // echo '<pre>';
    // var_dump($articles);
    // die();
?>
<html>
<head>
    <title>Blog</title>
</head>
<body>
    <?php include('navigation.php'); ?>

    <div>
        <ul>
        <?php
            foreach ($articles as $article) {
                echo "<li><a href='article.php?article_id=$article[0]'>$article[1]</a></li>";
            }
        ?>
        </ul>
    </div>
</body>
</html>