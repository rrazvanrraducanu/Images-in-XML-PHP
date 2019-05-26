<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Data</title>
            </head>
            <body>
                                <table border="1">
                    <tr bgcolor="red">
                        <th style="width:100px">ID</th>
                        <th style="width:100px">Title</th>
                        <th style="width:100px">Picture</th>
                        <th style="width:200px" colspan="3" align="center">Actions</th> 

                    </tr>
                    <xsl:for-each select="root/date">
                    <tr>
                    <td style="width:100px"><xsl:value-of select="id"/></td>
                    <td style="width:100px"><xsl:value-of select="title"/></td>
                    <td style="width:100px"><img src="{image}"/></td>
                    <td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="view"/>
                                </xsl:attribute>
                                <span>View</span>
                                </xsl:element>
</td>
<td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="edit"/>
                                </xsl:attribute>
                                <span>Edit</span>
                                </xsl:element>
</td>
 <td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="delete"/>
                                </xsl:attribute>
                                <xsl:attribute name="onclick">
                                    <xsl:value-of select="confirm"/>
                                </xsl:attribute>
                                <span>Delete</span>
                                </xsl:element>
</td> 
                    </tr>
                    </xsl:for-each>
                </table>
                <a href="upload.php">Upload another record</a>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
