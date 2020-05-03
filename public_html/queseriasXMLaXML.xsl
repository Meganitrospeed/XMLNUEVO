<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
            <xsl:for-each select="/rows/row">
                <tr>
                    <td>
                    <xsl:value-of select="Nombre"/>
                    </td>
                    <td>
                        <xsl:value-of select="Localidad"/>
                    </td>
                    <td>
                        <xsl:value-of select="Telefono"/>
                    </td>
                    <td>
                        <xsl:value-of select="Direccion"/>
                    </td>
                </tr>
            </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
