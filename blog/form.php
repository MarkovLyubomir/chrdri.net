<?php
    include('db.php');

    $result = $db->query("SELECT * FROM categories");
    $categories = $result->fetch_all();

    $title = "";
    $body = "";
    $category = 0;

    /**
     * On form submit.
     */
    if (!empty($_POST)) {
        if (!is_null($_POST["title"])) {
            $title = $db->real_escape_string($_POST["title"]);
        }
        
        $article = new Article();
        $article->get(1);
        $article->name = "New name";
        $article->save();

        $body = $db->real_escape_string($_POST["body"]);
        $category_id = $_POST["category"];

        $sql = "    
            INSERT INTO 
                articles (title,body,category_id) 
            VALUES 
                ('$title', '$body', $category_id);
        ";

        $resultArticle = mysqli_query($db, $sql);

        if($resultArticle) {
            echo "<em>Article added successfully!</em>";
        } else {
            echo "Error: ";
            echo '<pre>';
            var_dump($resultArticle);
            die();
        }
    }
?>
<html>
<head>
    <title>Blog Form</title>
</head>
<body>
    <?php include('navigation.php'); ?>

    <form action="form.php" method="POST">
        <input type="text" name="title" placeholder="Title" value="<?php echo $title ?>">
        <br>
        <br>
        <textarea name="body"cols="30" rows="10" placeholder="Body"></textarea>
        <br>
        <br>
        <select name="category">
            <?php
            foreach ($categories as $category) {
                echo "<option value='$category[0]'>$category[1]</option>";
            }
            ?>
        </select>
        <br>
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
