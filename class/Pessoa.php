<?php
    require_once "Conexao.php";

    class Pessoa {
        public $nome;
        public $cpf;
        public $telefone;
        private $con;

        public function __construct() {
            $this->con = Conexao::getInstance();
        }

        public function listar($pg){
            $stmt = $this->con->prepare("SELECT * FROM inscrito ORDER BY INSCRITO.NOME ASC LIMIT 10 OFFSET $pg;");
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_OBJ);
        }

        public function calculaTotal(){
            $stmt = $this->con->prepare("SELECT COUNT(*) as total FROM inscrito;");
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_OBJ);
        }
    }