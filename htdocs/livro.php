<?php

try {
    $conectar = new PDO("sqlite:banco/banco_biblioteca.db");

    $sql = $conectar->query("SELECT * FROM tb_livro");

    $tb_livro = $sql->fetchAll(PDO::FETCH_ASSOC);
    /*
            for($i = 0; $i < count($tb_usuario); $i++){
                echo "Matricula: " . $tb_usuario[$i]['matricula'];
                echo "Nome: " . $tb_usuario[$i]['nome'];
                echo "Telefone: " . $tb_usuario[$i]['telefone'];
                echo "<br>";
            }

    */
    //echo "OK";
} catch (\Throwable $th) {
    echo "não OK";
}

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca Municipal</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
<header> 
        <img src="/img/Biblioteca-Banner.png" alt="Banner-de-Livros" title="Banner-de-Livros">   
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="usuarios.php">Usuários</a></li>
                <li><a href="livro.php">Livros</a></li>
                <li><a href="#">Emprestimos</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="cadastro">
            <h2>Livro</h2>
            <form action="livro_cadastro.php" method="POST">
                <label for="codigo_catalogacao">codigo_catalogacao:</label>
                <input type="text" name="codigo_catalogacao" id="codigo_catalogacao">

                <label for="titulo">Titulo:</label>
                <input type="text" name="titulo" id="titulo">

                <label for="autor">Autor:</label>
                <input type="text" name="autor" id="autor">

                <label for="editora">Editora:</label>
                <input type="text" name="editora" id="editora">

                <label for="ano_de_publicacao">Ano_de_publicação:</label>
                <input type="text" name="ano_de_publicacao" id="ano_de_publicacao">

                <label for="quantidade">Quantidade:</label>
                <input type="text" name="quantidade" id="quantidade">

                <div class="botoes">
                    <input type="submit" value="Cadastrar">
                    <input type="reset" value="Limpar">
                </div>

            </form>
        </div>

        <div class="consulta-livro">
            <h2>Consulta de Livro</h2>
            <table>
                <tr>
                    <th>codigo de catalogação</th>
                    <th>Livro</th>
                    <th>Autor</th>
                    <th>Opções</th>
                </tr>
                <?php
                for($i = 0; $i < count($tb_livro); $i++){
                    echo "<tr>";
                    echo "<td id='td_centro'>" . $tb_livro[$i]['codigo_catalogacao'] . "</td>";
                    echo "<td>" . $tb_livro[$i]['titulo'] . "</td>";
                    echo "<td>" . $tb_livro[$i]['autor'] . "</td>";
                    echo "<td id='td_centro'>";
                    echo "<a href=''>Visualizar</a>";
                    echo "<a href=''>Excluir</a>";
                    echo "</td>";
                    echo "</tr>";
                }
                ?>
            </table>
        </div>
    </main>
</body>
</html>

<?php
    $conectar = null;
?>