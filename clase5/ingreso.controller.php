<?php

class IngresoController {

  var $messages = null;


  function main() {
    $tpl = new TemplatePower("templates/menu.html");
    $tpl->prepare();


    return $tpl->getOutputContent();
  }

 
}
