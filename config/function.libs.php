<?php

function tanggal($tgl='')
{
  $bulan  = array('','Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Dessmber');

  // 2017-12-05
  // 012345678
  $tg = substr($tgl,8,2);
  $bl = substr($tgl,5,2);
  $th = substr($tgl,0,4);

  return $tg.' '.$bulan[(int)$bl].' '.$th;
}

?>
