<?php

function send_json(array $json) {
  echo json_encode($json);
  die();
}