<?php
    class Conexao {
        private static $con;
        private static $drive = "mysql";
        private static $host = "localhost";
        private static $db = "paginacao";
        private static $pass = "";
        private static $user = "root";

        private static function conectar(){
            try {
                self::$con = new PDO(self::$drive.':host='.self::$host.';dbname='.self::$db.';charset=utf8', self::$user, self::$pass,
                    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
                );
            } catch (PDOException $e) {
                die('Erro ao conectar com o banco de dados: '.$e->getMessage());
            }
        }

        public static function getInstance(){
            if (!isset(self::$con)) {
                self::conectar();
            }
            return self::$con;
        }
    }
?>