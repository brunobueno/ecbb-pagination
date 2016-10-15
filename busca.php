<?php
require_once "class/Pessoa.php";

$pg = isset($_POST['pagina']) ? $_POST['pagina'] : 1;

if ($pg != '') {
    $registros = new Pessoa();

    $pg *= 10;
    $pg -= 10;

    $reg = $registros->listar($pg);
    if (count($reg) > 0) {
        foreach ($reg as $regs) {
            echo "<tr>".
                    "<td>{$regs->nome}</td>".
                    "<td>{$regs->cpf}</td>".
                    "<td>{$regs->telefone}</td>".
                 "</tr>";
        }
    } else {
        echo "<tr>".
                "<td>Nenhuma informação encontrada.</td>".
                "<td></td>".
                "<td></td>".
             "</tr>";
    }
}