<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="pt-PT">
<meta charset="utf-8"/> 
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd
    text-align: left
    padding: 8px
}

tr:nth-child(even) {
    background-color: #dddddd
}
</style>
</head>
<body>
  <h2>Previsao do tempo para Braga</h2>
  <table>
    <tr>
      <th style="text-align:center" >Dia</th>
      <th style="text-align:center" >Previsao</th>
      <th style="text-align:center" >Temperatura Minima</th>
      <th style="text-align:center" >Temperatura Maxima</th>
    </tr>
    <xsl:for-each select="Rows/Row">
    <tr>
      <td style="text-align:center" ><xsl:value-of select="forecastDate"/></td>
      <td style="text-align:center" ><xsl:value-of select="descWeatherType"/></td>
      <td style="text-align:center" ><xsl:value-of select="tMin"/></td>
      <td style="text-align:center" ><xsl:value-of select="tMax"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
