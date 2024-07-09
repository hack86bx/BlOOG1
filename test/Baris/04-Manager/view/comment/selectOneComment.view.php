<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exemple du CommentManager::selectOneComment()</title>
</head>
<body>
    <h1>Exemple du CommentManager::selectOneComment()</h1>
    <div>
        <?php

        require 'menu.comment.view.php';

        if(is_null($selectOneCategory)):
        ?>
        <h3>Commentaire inexistant</h3>
        
        <?php
    else:
        ?>
    <h4>ID : <?=$selectOneCategory->getCategoryId()?> <a href="?view=<?=$selectOneCategory->getCategoryId()?>">Voir ce commentaire via son id</a></h4>
    <p><?=$selectOneCategory->getCategorySlug ()?></p>
    <p><?=$selectOneCategory->getCategoryDescription()?></p><hr>
        <?php
    endif;
        ?>
    </div>
    
    <?php
var_dump($dbConnect,$CategoryManager,$selectOneCategory);
    ?>
</body>
</html>