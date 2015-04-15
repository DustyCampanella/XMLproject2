<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="2.0">

	<xsl:template match="/">
		<!--<xsl:for-each select="distinct-values(//author | //editor)">-->
			 <xsl:apply-templates select="//author | //editor"/> <!-- On saut au template definit ci-dessous -->
		<!--</xsl:for-each>-->
	</xsl:template>  

<xsl:template match="//author | //editor">
	
	<!-- On met le nom et les prenoms de la person dans des variables -->
	<xsl:variable name="all_name" select="."/>
	<xsl:variable name="last_name" select="tokenize($all_name, ' ')[last()]"/>
	<xsl:variable name="first_name" select="replace($all_name, concat(' ',$last_name), '')"/>
	<i><xsl:value-of select="$first_name"/></i>
	<b><xsl:value-of select="$last_name"/></b>
	
	<!--<xsl:result-document href="a-tree/m/Maier.David.html" format="html">
		<html>
		  <head> <title>Publication of </title> </head>
		  <body>
				<h1></h1>
		  </body>
		</html>

	</xsl:result-document> -->
</xsl:template>
	
</xsl:stylesheet>
