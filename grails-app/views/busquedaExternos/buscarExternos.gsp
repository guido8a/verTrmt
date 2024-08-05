<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="noMenu">
        <title>Buscar Trámites Externos</title>

        <style type="text/css">

        .css-vertical-text {
            /*position          : absolute;*/
            left              : 5px;
            bottom            : 5px;
            color             : #0088CC;
            border            : 0px solid red;
            /*writing-mode      : tb-rl;*/
            -webkit-transform : rotate(270deg);
            -moz-transform    : rotate(270deg);
            -o-transform      : rotate(270deg);
            white-space       : nowrap;
            display           : block;
            width             : 20px;
            height            : 20px;
            font-size         : 25px;
            font-family       : 'Tulpen One', cursive;
            font-weight       : bold;
            font-size         : 35px;
            /*text-shadow       : -2px 2px 1px rgba(0, 0, 0, 0.25);*/

            /*text-shadow: 0px 0px 1px #333;*/
        }

        .tituloChevere {

            color       : #0088CC;
            border      : 0px solid red;
            white-space : nowrap;
            display     : block;
            /*width       : 98%;*/
            height      : 25px;
            font-family : 'open sans condensed';
            font-weight : bold;
            font-size   : 16px;
            /*text-shadow : -2px 2px 1px rgba(0, 0, 0, 0.25);*/
            /*margin-top  : 10px;*/
            line-height : 18px;

            /*text-shadow: 0px 0px 1px #333;*/
        }

        .container-celdas {
            width      : 1000px;
            height     : 150px;
            float      : left;
            overflow   : auto;
            overflow-y : auto;
        }

        .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
            background-color : #FFBD4C;
        }

        .negrilla {
            font-weight : bold;

        }
        .allCaps {
            text-transform : uppercase;
        }

        </style>

    </head>

    <body>

        <div style="text-align: center; margin-top: 10px; height: ${(flash.message) ? '650' : '830'}px;" class="well">
            <div class="page-header" style="margin-top: -10px;">
                <div style="position: fixed; margin-left: 20px; width: 100px">
                    <img src="${resource(dir: 'images', file: 'logo_gadpp_reportes.png')}"/>
                    EFICIENCIA Y SOLIDARIDAD
                </div>
                <h1>S.A.D. Web</h1>

                <h3>
                    <p class="text-info">GOBIERNO AUTÓNOMO DESCENTRALIZADO PROVINCIA DE PICHINCHA</p>

                    <p class="text-info">Sistema de Administración de Documentos</p>
                </h3>
            </div>
            <elm:flashMessage tipo="${flash.tipo}" icon="${flash.icon}"
                              clase="${flash.clase}">${flash.message}</elm:flashMessage>

            <div class="dialog ui-corner-all" style="height: 295px;padding: 10px;width: 910px;margin: auto;margin-top: 5px">
                %{--<div style="text-align: center; margin-top: 10px; color: #810;">--}%
                %{--<img src="${resource(dir: 'images', file: 'logoSAD.png')}"/>--}%
                %{--</div>--}%

                <div class="buscar" style="margin-bottom: 20px">

                    <fieldset>
                        <legend class="text-info">Consulta de Trámites</legend>


                        %{--<div class="col-md-10">--}%
                            %{--<div class="col-md-4" style="margin-right: 20px; text-align: left">--}%
                                %{--<label for="institucion">Institución Remitente</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-md-5">--}%
                                %{--<g:textField name="institucion" value="" maxlength="35" class="form-control" style="width: 350px"/>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="col-md-10">--}%
                            %{--<div class="col-md-4" style="margin-right: 20px; text-align: left">--}%
                                %{--<label for="contacto">Entregado por</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-md-5">--}%
                                %{--<g:textField name="contacto" value="" maxlength="35" class="form-control" style="width: 350px"/>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="col-md-10">--}%
                            %{--<div class="col-md-4" style="margin-right: 20px; text-align: left">--}%
                                %{--<label for="numero" style="text-align: left">Número de documento Externo</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-md-2">--}%
                                %{--<g:textField name="numero" value="" maxlength="15" class="form-control allCaps" style="width: 180px"/>--}%
                            %{--</div>--}%
                        %{--</div>--}%


                        <div class="row">
                            <div class="col-md-3" style="text-align: left">
                                <label for="codigo">Código del trámite</label>
                            </div>

                            <div class="col-md-2" style="margin-left: -20px;">
                                <g:textField name="codigo" value="" maxlength="20" class="form-control allCaps" style="width: 160px"/>
                            </div>
                        </div>
                        <div class="col-md-7" style="text-align: left; margin-left: 30px; margin-top: 15px; width: 580px;">
                            Ingrese el código del trámie en el formato: DEX - # - OFI - AÑO. <br/> Donde: <strong>DEX</strong>: es el prefijo para todos los trámites,
                            <strong>#</strong>: representa el número del trámite, <strong>OFI</strong> son las siglas de la oficina y
                            <strong>AÑO</strong> es los dos dígitos del año. <span style="color: #448"> Ejemplo: DEX-43-DPT-14</span>
                        </div>
                    </div>

                        <div class="col-md-10">
                            <a href="#" name="busqueda" class="btn btn-success btnBusqueda" style="margin-top: -15px">
                                <i class="fa fa-check"></i> Buscar
                            </a>
                        </div>

                        <div class="col-md-10" style="text-align: left; margin-left: 20px; margin-top: 5px;">
                            <p class="text-info"> Si desconoce el número o código del trámite, por favor comuníquese  al teléfono: ${parametros?.prmttelf}</p>
                        </div>


                    </fieldset>
                </div>


                <div id="tabla">

                </div>

            </div>
        </div>


        <div class="modal fade " id="dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Detalles</h4>
                    </div>

                    <div class="modal-body" id="dialog-body" style="padding: 15px">

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <script type="text/javascript">


            %{--var detalles = {--}%
            %{--text   : 'Detalles',--}%
            %{--icon   : "<i class='fa fa-search'></i>",--}%
            %{--action : function (e) {--}%
            %{--$("tr.trHighlight").removeClass("trHighlight");--}%
            %{--e.preventDefault();--}%
            %{--$.ajax({--}%
            %{--type    : 'POST',--}%
            %{--url     : '${createLink(controller: 'tramite3', action: 'detalles')}',--}%
            %{--data    : {--}%
            %{--id : id--}%
            %{--},--}%
            %{--success : function (msg) {--}%
            %{--$("#dialog-body").html(msg)--}%
            %{--}--}%
            %{--});--}%
            %{--$("#dialog").modal("show")--}%
            %{--}--}%
            %{--};--}%

            function buscar() {
                console.log('buscar...')
                $("#tabla").html("Buscando...").prepend(spinner);

//                openLoader("Buscando");
                var codigo = $("#codigo").val().toUpperCase();
//                var contacto = $("#contacto").val().toUpperCase();
//                var numero = $("#numero").val().toUpperCase();
//                var institucion = $("#institucion").val().toUpperCase();

                $.ajax({
                    type    : "POST",
                    url     : "${g.createLink(controller: 'busquedaExternos', action: 'tablaBusquedaExternos')}",
                    data    : {
                        codigo      : codigo
//                        contacto    : contacto,
//                        numero      : numero,
//                        institucion : institucion
                    },
                    success : function (msg) {
                        $("#tabla").html(msg);
//                        closeLoader();
                    }
                });
            }

            $(".btnBusqueda").click(function () {
                buscar();
            });

            $("input").keyup(function (ev) {
                if (ev.keyCode == 13) {
                    buscar();
                }
            });


        </script>

    </body>
</html>