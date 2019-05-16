<sf:form  modelAttribute="client"
          method="POST">

    <sf:hidden path="id"/>

    <table width="500" border="0" cellpadding="4" cellspacing="1"
           align="center">

        <tr>
            <td width="130" align="right" ><s:message code="register.name"/></td>
            <td width="270" align="left"><sf:input path="name"
                                                   size="28" id="name" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><font color="red"><sf:errors path="name"/></font></td>
        </tr>

        <tr>
            <td width="130" align="right"><s:message code="register.lastName"/></td>
            <td width="270" align="left"><sf:input path="lastName"
                                                   size="28" /></td>
        </tr>

        <tr>
            <td colspan="2" align="center"><font color="red"><sf:errors path="lastName"/></font></td>
        </tr>

        <tr>
            <td width="130" align="right" ><s:message code="register.email"/></td>
            <td width="270" align="left"><sf:input path="email" size="28" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><font color="red"><sf:errors path="email"/></font></td>
        </tr>

        <tr>
            <td colspan="2" align="center" bgcolor="#fff">
                <input type="submit" value="<s:message code="button.save"/>" />
                <input type="button" value="<s:message code="button.cancel"/>"
                       onclick="window.location.href='${pageContext.request.contextPath}/'"/>
            </td>
        </tr>


    </table>

</sf:form>