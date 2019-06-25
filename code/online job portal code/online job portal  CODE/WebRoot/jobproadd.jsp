<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>

<%@page session="true"%>
<%@ include file="makecon.jsp" %>
<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);

%>

<%!  	
	ResultSet rs = null;
%>
<%! int jcode;%>
<%! String strr;%> 
<% try
	{
 	rs=st.executeQuery("select max(job_code) from job_requ");
	if(rs.next())
		{
		
		jcode=rs.getInt(1)+1;
		System.out.println("MaxJcode:"+jcode);
		
		}
	else
		{
	   	jcode=500;
		System.out.println("Max:"+jcode);
		}

 }
 catch(Exception e)
	{}
finally
{
	rs.close();
	st.close();
	con.close();
}
 %>

 	
<TABLE cellSpacing=0 cellPadding=0 width=761 bgColor=#6699cc border=0>

  <TBODY>
  <TR>
    <TD vAlign=top height=321 width="784">
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="353">
       <form name="jobcode11" method="post" action="jobproadd1.jsp">
        <TBODY>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="36">
            <p align="center">
              &nbsp;
            <p align="center">
              <b>
              <font color="#6699CC">
              Adding the New Requirements</font></b>
            <p align="center">
              &nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Job Code</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input type="text" name="textfield1" value="<%=jcode%>" size="20" tabindex="1" ReadOnly>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Responsibilities 
                &nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input type="text" name="textfield5" size="20" tabindex="5">
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Job Name&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input type="text" name="textfield2" size="20" tabindex="2">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Req. 
                Experience(Numbers)&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input type="text" name="textfield6" size="20" tabindex="6">
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp; Qualification &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center"><input type="text" name="textfield3" size="20" tabindex="3">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;Vacancies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26"><input type="text" name="textfield7" size="20" tabindex="7">
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="36">&nbsp;&nbsp;&nbsp; Required Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="36">
            <p align="center"> 
                <input type="text" name="textfield4" size="20" tabindex="4">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="36">&nbsp;Created 
                by &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
	          <TD vAlign=top width=190 
    bgColor=#ffffff height="36"><input type="text"   name="textfield8"  size="20" tabindex="8" >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="38" rowspan="2">&nbsp;&nbsp;&nbsp; Created On&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center"><input type="text" name="textfield9" size="20" tabindex="9">
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19">&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center">(dd/mm/yyyy)
          </TD>
        

						<td align='right'>
							Status
						</td>
						<td>
							<select name="textfield11">
								<option value="select" selected="true">
									<font size="3" face="Verdana">--Select--</font>
								</option>
								<option value="Male">
									<font size="3" face="Verdana">Active</font>
								</option>
								<option value="Female">
									<font size="3" face="Verdana">InActive</font>
								</option>
							</select>
						</td>
						<td></td>
						<td></td>
					<!--
	
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19"><input type="text" name="textfield11" size="20" tabindex="11">
        </TD>
        --></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp; Last Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">&nbsp; 
                <input type="text" name="textfield10" size="20" tabindex="10">
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">(dd/mm/yyyy)</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="Submit" value="Create" tabindex="12">&nbsp;&nbsp;
            <input type="reset" name="Submit2" value="Reset" tabindex="13">
          </TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="25">&nbsp;</TD></TR></TBODY>

</form>
</TABLE></TD></TR></TBODY></TABLE>
<script language="JavaScript">



var frmvalidator = new Validator("register");

frmvalidator.addValidation("textfield5", "req", "Please enter your Responsibilities");
frmvalidator.addValidation("textfield2", "req","Please enter your Job Name ");
frmvalidator.addValidation("textfield3", "req"," Please enter your Qualification");
frmvalidator.addValidation("textfield4", "req"," Please enter your Required Skills");
frmvalidator.addValidation("textfield6", "req"," Please enter your Req. Experience");
frmvalidator.addValidation("textfield7", "req"," Please enter your Vacancies");
frmvalidator.addValidation("textfield8", "req"," Please enter your Created by");
frmvalidator.addValidation("textfield9", "req"," Please enter your Created On");
frmvalidator.addValidation("textfield10", "req"," Please enter your  Last Date");
frmvalidator.addValidation("textfield11", "req"," Please enter your Status");

</script>
</BODY></HTML>
