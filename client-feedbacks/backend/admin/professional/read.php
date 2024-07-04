<?php

include('../../shared/connection_db.php');
include('../../shared/send_json.php');

if (isset($_GET)) {
  $sql_code = "SELECT * FROM professional";
  $sql_query = $mysqli->query($sql_code);

  if ($sql_query) {
    $quantity = $sql_query->num_rows;

    if ($quantity > 0) {
      $specialty = $sql_query->fetch_all();
      echo json_encode($specialty);
    } else {
      send_json([
        "status" => "error",
        "message" => "Nenhum profissional encontrado"
      ]);
    }
  } else {
    send_json([
      "status" => "error",
      "message" => "Erro ao carregar profissionais",
      "error_message" => "Fail in code SQL: " . $mysqli->error
    ]);
  }
} else {
  send_json([
    "status" => "error",
    "message" => "Requisição inválida"
  ]);
}

