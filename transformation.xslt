<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text"/>

    <xsl:comment>TOHLE JE ZE CVIKA</xsl:comment>

    <xsl:template match="/">
        {
        "Brand":"<xsl:value-of select="smartphone/brand"/>",
        "Model":"<xsl:value-of select="smartphone/model_name"/>",
        "Prices": [
        <xsl:for-each select="smartphone/prices/price">
            <xsl:if test="value>200">
                {
                "price":"<xsl:value-of select="value"/>CZK"<xsl:if test="discount">,</xsl:if><xsl:text>&#xA;</xsl:text>
                <xsl:text>&#009;&#009;&#009;&#009;&#009;</xsl:text><xsl:if test="discount">"discount":"<xsl:value-of select="discount"/>"</xsl:if>
                },
            </xsl:if>
        </xsl:for-each>
        ]
        }
    </xsl:template>
</xsl:stylesheet>