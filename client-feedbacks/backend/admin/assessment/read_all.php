<?php

include '../../shared/connection_db.php';
include '../../shared/convert_to_utf8.php';

if (isset($_GET)) {
  $offset = $_GET['offset'];
  $result = $mysqli->query("SELECT patient.name as patient_name, grade.created_at as created_feedback, grade.*, patient.*, professional.*
    FROM grade
    INNER JOIN patient ON grade.patient_id = patient.patient_id
    INNER JOIN professional ON grade.professional_id = professional.professional_id
    WHERE patient.patient_id != 1
    LIMIT 10
    OFFSET $offset
  ");

  if ($result) {
      $quantity = $result->num_rows;
  
      if ($quantity > 0) {
          $result_array = [];
          while ($row = $result->fetch_assoc()) {
              $result_array[] = utf8ize($row);
          }

          header('Content-Type: application/json; charset=utf-8');
          $json_result = json_encode($result_array);

          if ($json_result === false) {
              echo json_encode(["error" => "JSON encoding error: " . json_last_error_msg()]);
          } else {
              echo $json_result;
          }
      } else {
          header('Content-Type: application/json; charset=utf-8');
          echo json_encode(["data" => []]);
      }
  } else {
      header('Content-Type: application/json; charset=utf-8');
      echo json_encode(["error" => "Query failed"]);
  }
} else {
  header('Content-Type: application/json; charset=utf-8');
  echo json_encode(["error" => "Invalid request"]);
}

