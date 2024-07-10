<?php

function utf8ize($d) {
  if (is_array($d)) {
      foreach ($d as $k => $v) {
          $d[$k] = utf8ize($v);
      }
  } else if (is_string($d)) {
      return mb_convert_encoding($d, 'UTF-8', 'ISO-8859-1');
  }
  return $d;
}