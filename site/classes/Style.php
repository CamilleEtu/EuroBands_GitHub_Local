<?php

class Style{
    public $idStyle;
    public $nomStyle = "";

    public function __construct($idStyle,$ns){
        $this->idStyle = $idStyle;
        $this->nomStyle = $ns;
    }
}

?>