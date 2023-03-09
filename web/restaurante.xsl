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
		
		<main>
			<xsl:variable name="local" select="restaurante[nombrerestaurante='El clarete']"/>
			<h1><a href="{$local/informacion}" target="_blank"><xsl:value-of select="$local/nombrerestaurante"/> - <xsl:value-of select="$local/ciudad"/></a></h1>
			<article class="restaurante">	
			<xsl:for-each select="$local/menu">
				<h3><xsl:value-of select="@tipo"/></h3>
				<xsl:for-each select="plato">
					<p><xsl:value-of select="."/></p>
					<p></p>
				</xsl:for-each>
			</xsl:for-each>	
			</article>
		
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>


   </xsl:template>
</xsl:stylesheet>