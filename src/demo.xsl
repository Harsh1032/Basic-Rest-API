<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:mode on-no-match="shallow-copy"/> 
<xsl:template match="Education">
<html>
<head>
<style>
body{
    font-family: 'Times New Roman', Times, serif;
    
}
  
  .name {
    margin-top: 10px;
    text-align: center;
    height: 5%;
    color:#333;
    
  }
  .list {
    list-style-type: none;
    width: 100%;
    padding: 0;
    overflow: hidden;
    background-color: #333;
  }
      
      
  .list1{
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    float: left;
     
  }
      
  li a:hover:not(.active) {
    background-color: #111;
    color: #4169E1;
  }
  .table {
    width: 100%;
    height: 30%;
    display: grid;
  }
  .tableHeader{
    background-color: #333;
    color: #FFFAF0;
  }
</style>
</head> 
<body>
 <h1 class="name" style= "text-align: center">Harsh Chamola</h1>
    <div>
        <ul class="list">
        <div>    
          <li  ><a class="list1" href="file:///D:/Javascript/Project.html">Home</a></li>
        </div>
        <div >  
          <li><a class="list1" href="#aboutme">About Me</a></li>
        </div>
        <div>
          <li><a class= "list1" href="#skills">Skills</a></li>
        </div>
        <div>  
          <li  ><a class="list1" href="file:///D:/Javascript/demo1/xslt-out/result1.html">Education</a></li>
        </div>
        <div>
          <li><a class="list1" href="#resume">Resume</a></li>
        </div>
        <div>
          <li ><a class="list1" href="file:///D:/Javascript/Project3.html">Hobbies</a></li>
        </div>
          <div>
          <li><a class="list1" href="#travel">Travel</a></li>
        </div>
          <div>
          <li ><a class="list1" href="file:///D:/Javascript/Project1.html">Feedback</a></li>
        </div>
        </ul>
    </div>
<br/><br/><br/><br/><br/>
<h1 style= "text-align: center; height: 10%"><i>Education</i></h1>


<div class ="table">
<table border="1">
    <tr>
    <div class="tableHeader">
      <th style="text-align:left">Serial Number</th>
      <th style="text-align:left">Academic Qualification</th>
      <th style="text-align:left">Educational Institute</th>
      <th style="text-align:left">Duration</th>
      <th style="text-align:left">Academic result</th>
    </div>
    </tr>
<xsl:for-each select="heading/Qualification">
    <tr>
      <td>
      <xsl:value-of select="SerialNumber"/>
      <xsl:text> </xsl:text>
      </td>
      <td>
      <xsl:value-of select="AcademicQualification"/>
      <xsl:text> </xsl:text>
      </td>
      <td>
      <xsl:value-of select="EducationalInstitute"/>
      <xsl:text> </xsl:text>
      </td>
      <td>
      <xsl:value-of select="Duration"/>
      <xsl:text> </xsl:text>
      </td>
      <td>
      <xsl:value-of select="AcademicResult"/>
      <xsl:text> </xsl:text>
      </td>
    </tr>
</xsl:for-each>
</table>
</div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
