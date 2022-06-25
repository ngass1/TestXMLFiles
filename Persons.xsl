<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
  <html>
   <body>
    <h2>Person Directory</h2>
     <table border="1">
      <tr bgcolor="#9acd32">
						<th style="text-align:left">Name</th>
						<th style="text-align:left">Credential</th>
						<th style="text-align:left">Encryption</th>
						
						<th style="text-align:left">Phone</th>
						<th style="text-align:left">Provider</th>
						<th style="text-align:left">Category</th>
					</tr>
					<xsl:for-each select="Persons/Person">
						<tr>
							<td>
								<xsl:for-each select="Name">
											<xsl:value-of select="normalize-space(concat(First,' ',Last))" />
											<br/>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="Credential">
											<xsl:value-of select="normalize-space(concat(id,' | ',password))" />
											<br/>
								</xsl:for-each>
							</td>
							<td>
								<xsl:value-of select="Credential/password/@encryption"/>
							</td>
							<td>
								<xsl:for-each select="Phone">
											<xsl:value-of select="normalize-space(concat(Work,' , ',Cell))" />
											<br/>
								</xsl:for-each>
							</td>
							<td>
								<xsl:value-of select="Phone/Cell/@provider"/>
							</td>
							<td>
								<xsl:value-of select="Category"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>