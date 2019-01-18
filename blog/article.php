<?php
    include('db.php');

    if (!empty($_GET)) {   
        $article_id = $_GET["article_id"];

        $result = $db->query("SELECT * FROM articles WHERE id = $article_id");
        $article = $result->fetch_assoc();

        if (is_null($article)) {
            die("Error: 404");
        }

        $category_id = $article['category_id'];

        $catResult = $db->query("SELECT name FROM categories WHERE id = $category_id");
        $category = $catResult->fetch_assoc();
    }
?>

<html>
<head>
    <title><?php echo $article["title"] ?></title>
</head>
<body>
    <?php include('navigation.php'); ?>
 
    <h1><?php echo $article["title"] ?></h1>
    <em>Category: <?php echo $category["name"] ?></em>
    <div>
        <p>
            <?php echo $article["body"] ?>
        </p>
    </div>
</body>
</html>
