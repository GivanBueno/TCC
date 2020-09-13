<style>
.genric-btn.success-border {
    color: #4cd3e3;
    border: 1px solid #4cd3e3;
    background: #fff;
}

.genric-btn.circle {
    border-radius: 20px;
}

.genric-btn {
    display: inline-block;
    outline: none;
    line-height: 40px;
    padding: 0 30px;
    font-size: .8em;
    text-align: center;
    text-decoration: none;
    font-weight: 500;
    cursor: pointer;
    -webkit-transition: all 0.3s ease 0s;
    -moz-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
}

.genric-btn.success-border:hover {
  color: #fff;
  background: #4cd3e3;
  border: 1px solid transparent;
}
</style>

<head>
    <script src="/tabela/jquery.js"></script>
    <script src="h/tabela/DataTables/datatables.js"></script>
	<link rel="stylesheet" href="/tabela/DataTables/datatables.css">

    <script>
        $(function() {
        $('#example').DataTable();
        } );
    </script>
</head>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "obu";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf8mb4');

echo 
    '<body>
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Classificação 1</th>
                    <th>Classificação 2</th>
                    <th>Download</th>
                    <th>Tipo</th>
                </tr>
            </thead><tbody>';
$sql = "SELECT * FROM  documentos ORDER BY created DESC ";
$results = $conn->query($sql);
while($row = $results->fetch_assoc()) {

            echo '
                <tr>
                    <td>'.$row['id'].'</td>
                    <td>'.$row['titulo'].'</td>
                    <td>'.$row['nomeclatura'].'</td>
                    <td>'.$row['classe'].'</td>
                    <td><a href="'.$row['link'].'" class="genric-btn success-border circle" target="_blank">Link</a></td>
                    <td>'.$row['tipo'].'</td>
                </tr>
            ';
           
}

echo '</tbody><tfoot>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Classificação 1</th>
                <th>Classificação 2</th>
                <th>Download</th>
                <th>Autor(a)</th>
            </tr>
        </tfoot>
    </table>
</body>';
?>