<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Ejemplo Plantilla</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libreria">
        <h2>Mi Bliblioteca</h2>
        <table>
            <tr bgcolor="887788">
                <th>Isbn</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>numPaginas</th>
            </tr>
            <xsl:apply-templates select="libro"/>
        </table>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td><xsl:apply-templates select="isbn"/></td>
            <xsl:apply-templates select="titulo"/>
            <xsl:apply-templates select="autor"/>
            <xsl:apply-templates select="precio"/>
            <xsl:choose>
                <xsl:when test = "numPaginas &gt; 180">
                    <td bgcolor= "#ff0000">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                        <xsl:apply-templates select="numPaginas"/>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
    </xsl:template>

    <xsl:template match="titulo">
        <td bgcolor="#DDEEDD"><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="autor">
        <td bgcolor="#AABBAA"><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="precio">
        <td bgcolor="#DDEEDD"><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="numPaginas">
        <td bgcolor="#AABBAA"><xsl:value-of select="."/></td>
    </xsl:template>
                    
</xsl:stylesheet>             
