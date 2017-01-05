<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="wurui.productlist">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-productlist" ox-mod="productlist">

            <ul class="productlist">
                <xsl:for-each select="data/product-list/i">
                <li>
                    <a href="{href}">
                        <span class="imgbox" style="background-image:url({img})">

                        </span>
                        <h3 class="title">
                            <xsl:value-of select="title"/>
                        </h3>
                        <p class="brief">
                            <xsl:value-of select="brief"/>
                        </p>
                        <p class="price">
                            <em class="rmb">&#165;</em>
                            <xsl:choose>
                                <xsl:when test="contains(price,'A')">
                                    <xsl:value-of select="substring-before(normalize-space(price),'A')"/><sub>起</sub>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="normalize-space(price)"/>
                                </xsl:otherwise>
                            </xsl:choose>

                        </p>
                    </a>
                </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

</xsl:stylesheet>
