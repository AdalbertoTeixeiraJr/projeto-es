<html>
    <head>
        <title>Pagina Principal Monitor</title>
		<meta name="layout" content="main" />
		<style type="text/css" media="screen">

			#nav {
				margin-top:20px;
				margin-left:30px;
				width:228px;
				float:left;
			}
			.homePagePanel * {
				margin:0px;

			}
			.homePagePanel .panelBody ul {
				list-style-type:none;
				margin-bottom:10px;
			}
			.homePagePanel .panelBody h1 {
				text-transform:uppercase;
				font-size:1.1em;
				margin-bottom:10px;
			}
			.homePagePanel .panelBody {
				width:280;
				align:center;
				margin:0px;
				padding:15px;
			}
			.homePagePanel .panelBtm {
                                background: url(images/leftnav_btm.png) no-repeat top;
				height:20px;
				margin:0px;
			}

			.homePagePanel .panelTop {
                                background: url(images/leftnav_top.png) no-repeat top;
				height:11px;
				margin:0px;
			}
			h2 {
				margin-top:15px;
				margin-bottom:15px;
				font-size:1.2em;

                                text-align:center
			}
			#pageBody {
				margin-left:280px;
				margin-right:20px;
			}

html * {
    margin: 0;
    /*padding: 0; SELECT NOT DISPLAYED CORRECTLY IN FIREFOX */
}

/* GENERAL */

.spinner {
    padding: 5px;
    position: absolute;
    right: 0;
}

body {
    background: #FFF url(../images/bg.gif) repeat-x;
    color: #000;
    text-align:center;/*hack para I.E.*/
    font: 12px verdana, arial, tahoma, sans-serif;

}
#tudo{
    width:760px;
    margin: 0 auto;
    padding: 10px;
    color: #000;
    text-align:justify;/*remedio para o hack*/
}

#grailsLogo {
	padding:20px;
}

a:link {
	font-weight: bold;
	text-decoration: none;
	color: #B7A5DF;
	}
a:visited {
	font-weight: bold;
	text-decoration: none;
	color: #D4CDDC;
	}
a:hover
a:active {
	text-decoration: underline;
	color: #9685BA;
	}
acronym {
	border-bottom: none;
	}

h1 {
    color: #48802c;
    font: 16px verdana , arial , tahoma, sans-serif;
    font-weight: normal;
    font-size: 16px;
    margin: .8em 0 .3em 0;
    padding-bottom:15px;
    text-align:center;
}

ul {
    padding-left: 15px;
}

input, select, textarea {
    background-color: #fcfcfc;
    border: 1px solid #ccc;
    font: 11px verdana, arial, tahoma, sans-serif;
    margin: 2px 0;
    padding: 2px 4px;
}
select {
   padding: 2px 2px 2px 0;
}
textarea {
	width: 250px;
	height: 150px;
	vertical-align: top;
}

input:focus, select:focus, textarea:focus {
    border: 1px solid #b2d1ff;
}

.body {
    float: left;
    margin: 0 15px 10px 15px;
}


/* NAVIGATION MENU */

.nav {
    background: #fff url(../images/skin/shadow.jpg) bottom repeat-x;
    border: 1px solid #ccc;
    border-style: solid none solid none;
    margin-top: 5px;
    padding: 7px 12px;
}

.menuButton {
    font-size: 10px;
    padding: 0 5px;
}
.menuButton a {
    color: #333;
    padding: 4px 6px;
}
.menuButton a.home {
    background: url(../images/skin/house.png) center left no-repeat;
    color: #333;
    padding-left: 25px;
}
.menuButton a.list {
    background: url(../images/skin/database_table.png) center left no-repeat;
    color: #333;
    padding-left: 25px;
}
.menuButton a.create {
    background: url(../images/skin/database_add.png) center left no-repeat;
    color: #333;
    padding-left: 25px;
}

/* MESSAGES AND ERRORS */

.message {
    background: #f3f8fc url(../images/skin/information.png) 8px 50% no-repeat;
    border: 1px solid #b2d1ff;
    color: #006dba;
    margin: 10px 0 5px 0;
    padding: 5px 5px 5px 30px
}

div.errors {
    background: #fff3f3;
    border: 1px solid red;
    color: #cc0000;
    margin: 10px 0 5px 0;
    padding: 5px 0 5px 0;
}
div.errors ul {
    list-style: none;
    padding: 0;
}
div.errors li {
    background: url(../images/skin/exclamation.png) 8px 0% no-repeat;
    line-height: 16px;
    padding-left: 30px;
}

td.errors select {
    border: 1px solid red;
}
td.errors input {
    border: 1px solid red;
}

/* TABLES */

table {
    border: 1px solid #ccc;
    width: 100%
}
tr {
    border: 0;
}
td, th {
    font: 11px verdana, arial, helvetica, sans-serif;
    line-height: 12px;
    padding: 5px 6px;
    text-align: left;
    vertical-align: top;
}
th {
    background: #fff url(../images/skin/shadow.jpg);
    color: #666;
    font-size: 11px;
    font-weight: bold;
    line-height: 17px;
    padding: 2px 6px;
}
th a:link, th a:visited, th a:hover {
    color: #333;
    display: block;
    font-size: 10px;
    text-decoration: none;
    width: 100%;
}
th.asc a, th.desc a {
    background-position: right;
    background-repeat: no-repeat;
}
th.asc a {
    background-image: url(../images/skin/sorted_asc.gif);
}
th.desc a {
    background-image: url(../images/skin/sorted_desc.gif);
}

.odd {
    background: #f7f7f7;
}
.even {
    background: #fff;
}

/* LIST */

.list table {
    border-collapse: collapse;
}
.list th, .list td {
    border-left: 1px solid #ddd;
}
.list th:hover, .list tr:hover {
    background: #b2d1ff;
}

/* PAGINATION */

.paginateButtons {
    background: #fff url(../images/skin/shadow.jpg) bottom repeat-x;
    border: 1px solid #ccc;
    border-top: 0;
    color: #666;
    font-size: 10px;
    overflow: hidden;
    padding: 10px 3px;
}
.paginateButtons a {
    background: #fff;
    border: 1px solid #ccc;
    border-color: #ccc #aaa #aaa #ccc;
    color: #666;
    margin: 0 3px;
    padding: 2px 6px;
}
.paginateButtons span {
    padding: 2px 3px;
}

/* DIALOG */

.dialog table {
    padding: 5px 0;
}

.prop {
    padding: 5px;
}
.prop .name {
    text-align: left;
    width: 15%;
    white-space: nowrap;
}
.prop .value {
    text-align: left;
    width: 85%;
}

/* ACTION BUTTONS */

.buttons {
    background: #fff url(../images/skin/shadow.jpg) bottom repeat-x;
    border: 1px solid #ccc;
    color: #666;
    font-size: 10px;
    margin-top: 5px;
    overflow: hidden;
    padding: 0;
}

.buttons input {
    background: #fff;
    border: 0;
    color: #333;
    cursor: pointer;
    font-size: 10px;
    font-weight: bold;
    margin-left: 3px;
    overflow: visible;
    padding: 2px 6px;
}
.buttons input.delete {
    background: transparent url(../images/skin/database_delete.png) 5px 50% no-repeat;
    padding-left: 28px;
}
.buttons input.edit {
    background: transparent url(../images/skin/database_edit.png) 5px 50% no-repeat;
    padding-left: 28px;
}
.buttons input.save {
    background: transparent url(../images/skin/database_save.png) 5px 50% no-repeat;
    padding-left: 28px;
}
/* Confgurações do CSS FORM LOGIN*/
fieldset.login{
	width:260px;
	padding: 30px 0 0 0;
	padding-bottom:30px;

}
label.login{
	width:50px;
	font: 12px verdana, arial, tahoma, sans-serif;
	text-align: center;

}
input.login{
	width: 130px;/*esse tamanho tem que ser igual ao do select*/

}
input.criarConta{
    width: 200px;
    height:30px;
    font: bold 14px verdana, arial, tahoma, sans-serif;
    color:black;

}

select.login{
        width:130px;/*tem que ser igual ao input.login*/
	text-align:center;
}



</style>
    </head>
    <script type="text/javascript">
      function direciona(){
        
        window.location.href="[controller:'redireciona',action:'login']"

    }
    </script>
    <body><div id="tudo">
		<div id="nav">
			<div class="homePagePanel">
				<div class="panelBody">
                                  <h2>Menu</h2>
                                  <br>
                                  <h4>Preencher</h4>
                                  <br>
                                  <a href="monitor/procuraMatricula.gsp">Relatório Mensal</a><br/>
                                  <a href="monitor/procuraMatricula.gsp">Relatório Semestral</a><br/>
				  <br/>
                                  <h4>Visualizar</h4>
				  <br/>
                                  <a href="monitor/procuraMatricula.gsp">Relatório Mensal</a><br/>
                                  <a href="monitor/procuraMatricula.gsp">Relatório Semestral</a><br/>
                                  <a href="monitor/procuraMatricula.gsp">Cadastro</a>
				  <br/>

				  <br/>
                                  <h4>Atualizar</h4>
				  <br/>
                                  <a href="monitor/procuraMatricula.gsp">Cadastro</a>
				</div>
			</div>
     		</div>
		</div>
		<div id="pageBody">
		</div>
    </body>
</html>