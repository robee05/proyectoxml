<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <body>
            <div style="display:flex; justify-content:center;
            align-items:center;"><h1>Pókedex</h1></div>
            <div style="display:flex; flex-direction:row;
            justify-content:space-around;padding:20px;align-items:center;">
                 <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">
                        <xsl:for-each select="pokedex/pokemon/url_imagen">
                            <xsl:value-of select="@num_pokedex"/>
                            <xsl:value-of select="@nombre"/>
                        </xsl:for-each>
                    </div>
                     <div>
                         <xsl:for-each select="pokedex/pokemon/url_imagen">
                             <xsl:value-of select="@imagen"/>
                             <xsl:value-of select="@tipo_imagen"/>
                         </xsl:for-each>
                     </div>
                 </div>
                <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">
                        <h3>Datos Generales</h3></div>
                    <div>
                        <b>Altura:</b>
                        <xsl:for-each select="pokedex/pokemon/datos_generales/altura">
                            <xsl:value-of select="altura"/>
                        </xsl:for-each>
                    </div>
                    <div><b>Sexo:</b></div>
                    <div><b>Categoria:</b></div>
                    <div><b>Habilidad:</b></div>
                </div>
                <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">
                    Stats base</div>
                    <div>PS</div>
                    <div>AT</div>
                    <div>DEF</div>
                    <div>SPAT</div>
                    <div>SPDE</div>
                    <div>VEL</div>
                </div>
            </div>
            <div  style="display:flex; flex-direction:row;
            justify-content:space-around;padding:20px;align-items:center;">
                <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">Debilidades</div>
                        <div>tipo2</div>
                        <div>efectividad</div>
                        <div>tipo2</div>
                        <div>efectividad</div>
                    </div>
                <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">Fortalezas</div>
                        <div>tipo3</div>
                        <div>efectividad</div>
                        <div>tipo3</div>
                        <div>efectividad</div>
                </div>
                 <div style="display:flex; flex-direction:column;
                align-items:center;">
                    <div style="background-color:#00AAE4; color:white;border:100px;
                        border-radius:10px;width:150px;height:50px;
                        display:flex;align-items:center;text-align:center;
                        justify-content:center;">Nº evoluciones</div>
                        <div>num_pokedex</div>
                    </div>
            </div>



                <div>
                    <div>
                        <div>
                            <div>
                                <xsl:value-of select="@imagen"/>
                                <xsl:value-of select="@tipo_imagen"/>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>
                            <xsl:value-of select="altura"/>
                            <xsl:value-of select="peso"/>
                            <xsl:value-of select="sexo"/>
                            <xsl:value-of select="categoria"/>
                            <xsl:value-of select="habilidad"/>
                            </div>
                        </div>
                    </div>
                    <div>
                            <xsl:value-of select="ps"/>
                            <xsl:value-of select="at"/>
                            <xsl:value-of select="def"/>
                            <xsl:value-of select="spat"/>
                            <xsl:value-of select="spde"/>
                            <xsl:value-of select="vel"/>
                    </div>
                </div>
                <div>
                    <div>
                        <xsl:value-of select="tipo2"/>
                        <xsl:value-of select="efectividad"/>
                        <xsl:value-of select="tipo2"/>
                        <xsl:value-of select="efectividad"/>
                    </div>
                    <div>
                        <xsl:value-of select="tipo3"/>
                        <xsl:value-of select="efectividad"/>
                        <xsl:value-of select="tipo3"/>
                        <xsl:value-of select="efectividad"/>
                    </div>
                    <div>
                        <xsl:value-of select="num_pokedex"/>
                    </div>
                </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
