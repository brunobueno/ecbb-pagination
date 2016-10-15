<?php require_once "class/Pessoa.php"?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Paginação</title>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10 col-xs-12 table-top">
            <table class="table" id="table">
                <thead class="thead-inverse table-striped">
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Telefone</th>
                    </tr>
                </thead>
                <tbody id="loading">
                    <tr id='loading'><td colspan='3' class='text-md-center text-xs-center'><i class='fa fa-circle-o-notch fa-spin fa-3x fa-fw'></i></td></tr>
                </tbody>
                <tbody id="registros">

                </tbody>
            </table>
            <div class="paginacao text-md-right text-xs-right">
                <nav aria-label="Page navigation" id="navegacao">
                    <ul class="pagination">
                        <li class="page-item" id="primeira">
                            <a class="page-link" aria-label="Última" onclick="paginacao(1)">
                                <span aria-hidden="true">Primeira</span>
                                <span class="sr-only">Primeira</span>
                            </a>
                        </li>
                        <li class="page-item" id="anterior">
                            <a class="page-link" aria-label="Anterior" onclick="anterior()">
                                <span aria-hidden="true">Anterior</span>
                                <span class="sr-only">Anterior</span>
                            </a>
                        </li>
                        <?php
                            $pessoa = new Pessoa();
                            $i = 0;
                            $total = $pessoa->calculaTotal();
                            while ($total->total > 0):
                                $i++;
                                $total->total -= 10;
                        ?>
                        <li class="page-item" id="pagina<?=$i?>"><a class="page-link" onclick="paginacao(<?=$i?>)"><?=$i?></a></li>
                        <?php endwhile; ?>
                        <li class="page-item" id="proxima">
                            <a class="page-link" aria-label="Próxima" onclick="proxima()">
                                <span aria-hidden="true">Próxima</span>
                                <span class="sr-only">Próxima</span>
                            </a>
                        </li>
                        <li class="page-item" id="ultima">
                            <a class="page-link" aria-label="Última" onclick="paginacao(total_pg)">
                                <span aria-hidden="true">Última</span>
                                <span class="sr-only">Última</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>


<script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>

    var pg_atual = 1;
    var total_pg = <?=$i?>;

    function hide_nav(pg_atual) {
        if (pg_atual == 1){
            $("#anterior").hide();
            $("#primeira").hide();
            $("#ultima").show();
        }
        if (pg_atual > 1){
            $("#anterior").show();
            $("#primeira").show();
            $("#ultima").show();
        }
        if (pg_atual <= (total_pg - 1)){
            $("#proxima").show();
        }
        if(pg_atual == total_pg){
            $("#proxima").hide();
            $("#ultima").hide();
        }
    }

    $(document).ready(function () {
        $('#registros').empty();
        $('#navegacao').hide();
        $('#loading').show();
        $.post("busca.php").done(function( data ) {
            $("#registros").html(data);
            $('#loading').hide();
            $('#navegacao').show();
            $("#pagina1").addClass("active");
            pg_atual = 1;
            hide_nav(pg_atual);
        });
    });
    
    function paginacao(pg) {
        $('#registros').empty();
        $('#navegacao').hide();
        $('#loading').show();
        $.post("busca.php", { pagina: pg }).done(function( data ) {
            $("#registros").html(data);
            $('#loading').hide();
            $('#navegacao').show();
            $("li").removeClass("active");
            $("#pagina"+pg).addClass("active");
            pg_atual = pg;
            hide_nav(pg_atual);
        });
    }

    function proxima() {
        $('#registros').empty();
        $('#navegacao').hide();
        $('#loading').show();
        pg_atual += 1;
        $.post("busca.php", { pagina: pg_atual }).done(function( data ) {
            $("#registros").html(data);
            $('#loading').hide();
            $('#navegacao').show();
            $("li").removeClass("active");
            $("#pagina"+pg_atual).addClass("active");
            hide_nav(pg_atual);
        });
    }

    function anterior() {
        $('#registros').empty();
        $('#navegacao').hide();
        $('#loading').show();
        pg_atual -= 1;
        $.post("busca.php", { pagina: pg_atual }).done(function( data ) {
            $("#registros").html(data);
            $('#loading').hide();
            $('#navegacao').show();
            $("li").removeClass("active");
            $("#pagina"+pg_atual).addClass("active");
            hide_nav(pg_atual);
        });
    }
</script>
</body>
</html>