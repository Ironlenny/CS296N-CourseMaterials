<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet verison="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/week">
  <html>
    <head>
      <style>
        body {
          font-family: 'Arial', 'Verdana', 'sans-serif';
        }
        h4, h5 {
          margin-top: 0; margin-bottom:0;
        }
      </style>
    </head>
    <body>
      <h3>Week <xsl:value-of select="number"/></h3>
      <p><h4>Reading</h4></p>
      <h5>Essential Reading</h5>
      <xsl:value-of select="reading"/>
      <p><xsl:apply-templates select="supplemental"/></p>
      <p><xsl:apply-templates select="examples"/></p>
      <p><xsl:apply-templates select="exercises"/></p>
      <p><xsl:apply-templates select="lab"/></p>
    </body>
  </html>
</xsl:template>

<xsl:template match="supplemental">
  <h5>Supplemental Reading</h5>
  <xsl:for-each select="link">
    <a href="{url}" title="{title}"
      target="_blank"><xsl:value-of select="text"/></a>
    <br/>
  </xsl:for-each>
</xsl:template>

<xsl:template match="examples">
  <h4>Examples</h4>
  <xsl:for-each select="link">
    <a href="{url}" title="{title}"
      target="_blank"><xsl:value-of select="text"/></a>
    <br/>
  </xsl:for-each>
</xsl:template>

<xsl:template match="exercises">
  <h4>Exercises</h4>
  <xsl:for-each select="link">
    <a href="{url}" title="{title}"
      target="_blank"><xsl:value-of select="text"/></a>
    <br/>
  </xsl:for-each>
</xsl:template>

<xsl:template match="lab">
  <h4>Lab Assignment <xsl:value-of select="number"/></h4>
    <a href="{url}" title="{title}"
      target="_blank">Instructions</a>
    <br/>
    <a href="{url}" title="{title}"
      target="_blank">Code Review Form</a>
</xsl:template>

</xsl:stylesheet>
