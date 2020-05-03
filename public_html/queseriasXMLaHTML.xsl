<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : queseriasXMLaHTML.xsl
    Created on : 2 de mayo de 2020, 19:35
    Author     : Tete
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:x="https://www.juansito.com"
                xmlns:xd="https://www.juansito.com">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>queseriasXMLaHTML.xsl</title>
                <meta charset="utf-8"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1"></meta>                        
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></link>
                <!--<script src="index.js"></script>-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
            </head>
            <body>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Direccion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//x:row">
                            <tr>
                                <td>
                                    <xsl:value-of select="x:Nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="x:Direccion" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
