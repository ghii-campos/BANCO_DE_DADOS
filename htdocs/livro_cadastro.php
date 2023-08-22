<?php

    try{
    $conectar = new PDO("sqlite:banco/banco_biblioteca.db");

    $sql = $conectar->prepare("INSERT INTO tb_livro
    (codigo_catalogacao, titulo, autor, editora, ano_de_publicacao, quantidade)
    VALUES (:codigo_catalogacao, :titulo, :autor, :editora, :ano_de_publicacao, :quantidade)");

    $sql->bindParam(':codigo_catalogacao', $_POST['nome']);
    $sql->bindParam(':titulo', $_POST['titulo']);
    $sql->bindParam(':autor', $_POST['autor']);
    $sql->bindParam(':editora', $_POST['editora']);
    $sql->bindParam(':ano_de_publicacao', $_POST['ano_de_publicacao']);
    $sql->bindParam(':quantidade', $_POST['quantidade']);

    $sql->execute();

    header('location: livro.php');
} catch (\Throwable $th) {
    echo "não OK";
}

?>