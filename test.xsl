<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Employee Details</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Emp ID</th>
        <th>Name</th>
		<th>Department</th>
		<th>Salary</th>
      </tr>
      <xsl:for-each select="employee/details">
	  
        <tr>
          <td><xsl:value-of select="employee/details/empid"/></td>
          <td><xsl:value-of select="employee/details/name"/></td>
		  <td><xsl:value-of select="employee/details/department"/></td>
		  <td><xsl:value-of select="employee/details/salary"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>