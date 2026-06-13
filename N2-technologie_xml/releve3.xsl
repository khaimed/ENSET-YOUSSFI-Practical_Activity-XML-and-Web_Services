<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Releve</title>
            </head>
            <body>
                <h1>Détails du Relevé Bancaire</h1>
                <xsl:for-each select="/releve">
                    <ul>
                        <li>RIB :<xsl:value-of select="@RIB"/></li>
                        <li>Date Releve :<xsl:value-of select="dateReleve"/></li>
                        <li>Solde :<xsl:value-of select="solde"/></li>
                    </ul>
                </xsl:for-each>
                
                <h2>Période des Opérations</h2>
                <xsl:for-each select="releve/operations">
                    <ul>
                        <li>Date Debut : <xsl:value-of select="@dateDebut"/></li>
                        <li>Date Fin : <xsl:value-of select="@dateFin"/></li>
                    </ul>
                </xsl:for-each>
                
                
                <h1>Liste des Opérations CREDIT</h1>
                <table border="1" width="90%">
                    <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Dscription</th>
                    </tr> 
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']" >
                        
                        
                        
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr> 
                        
                    </xsl:for-each>
                </table>
                
            </body>
        </html> 
        
        
        
    </xsl:template>
    
    
    
    
</xsl:stylesheet>
