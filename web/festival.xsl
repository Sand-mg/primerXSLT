<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output encoding="UTF-8" method="html" doctype-system="about:legacy-doctype"/>

    <xsl:template match="/reservaeventos" >
    <html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<section class="festival">
			<h1>Festivales de rock</h1>
			<table>
				<tr>
					<th>FESTIVAL</th>
					<th>CONCIERTO</th>
					<th>FECHA</th>
					<th>HORA</th>
					<th>LUGAR</th>
				</tr>
                    <xsl:apply-templates/>	
				
			</table>			
		</section>
    
		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
    </html>
    </xsl:template>
    <xsl:template match="festival">
        <tr>
        <td><xsl:value-of select="nombrefesti"/></td>
		<td><xsl:value-of select="conciertos/concierto/grupo[@tipomusica='rock']"/></td>
		<td><xsl:value-of select="conciertos/concierto/grupo[@tipomusica='rock']/../fecha"/></td>
        <td><xsl:value-of select="conciertos/concierto/grupo[@tipomusica='rock']/../hora"/></td>
		<td><xsl:value-of select="lugar"/></td>
        </tr>
    </xsl:template>





</xsl:stylesheet>