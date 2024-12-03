<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Admin</title>
</head>
<body>
    <div class="container">
        <div class="row">
        <h2>Formulário de Cadastro</h2>
        <form action="adm_cadastro.php" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <!-- Campo de Nome -->
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>
            <br><br>

            <!-- Campo de Email -->
            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>
            <br><br>

            <!-- Campo de Imagem -->
            <label for="imagem">Imagem:</label>
            <input type="file" id="imagem" name="imagem" accept="upload/*" required>
            <br><br>

            <!-- Campo de Cargo -->
            <label for="cargo">Cargo:</label>
            <select id="cargo" name="cargo" required>
                <option value="">Selecione um cargo</option>
                <option value="administrador">Scrum Master</option>
                <option value="desenvolvedor">Desenvolvedor</option>
                <option value="designer">Designer</option>
                <option value="analista">Tester</option>
            </select>
            <br><br>

            <!-- Botão de Enviar -->
            <button type="submit">Enviar</button>

        </div>
        </form>
        </div>
    </div>

    <?php
        include_once 'dbConnection.php';
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nome = $_POST["nome"];
            $email = $_POST["email"];
            $cargo = $_POST["cargo"];
            
        
            // Processar o upload da imagem
            $imagemNome = $_FILES["imagem"]["name"];
            $imagemTipo = $_FILES["imagem"]["type"];
            $imagemTamanho = $_FILES["imagem"]["size"];
            $imagemTmpNome = $_FILES["imagem"]["tmp_name"];
        
            // Verificar se a imagem é válida
            if (empty($imagemNome)) {
                echo "Por favor, selecione uma imagem.";
            } else {
                // Verificar o tipo da imagem (opcional, dependendo dos requisitos do seu aplicativo)
                // Você pode usar a função mime_content_type() para obter o tipo real da imagem
                // Certifique-se de validar o tipo de imagem de acordo com suas necessidades de segurança
        
                // Pasta onde a imagem será armazenada no servidor
                $pastaDestino = "uploads/";      //criar essa pasta na pasta que ficar os arquivos
        
        
        // Recebe os dados do formulário
        $sql = "INSERT INTO admin (nome, email, cargo, imagem) VALUES (?, ?, ?, ?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("ssss", $nome, $email, $cargo, $imagemNome);

        if ($stmt->execute()) {
            echo "Dados e imagem inseridos com sucesso.";
        } else {
            echo "Erro ao inserir dados: " . $con->error;
        }
        $stmt->close();
    }

    // Feche a conexão com o banco de dados
    $con->close();
}

        
    ?>
</body>
</html>