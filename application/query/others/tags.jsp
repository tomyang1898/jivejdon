<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%@ page session="false" %>

  
<%  
int expire = 5 * 60 * 60;
long modelLastModifiedDate = com.jdon.jivejdon.presentation.action.util.ForumUtil.getForumsLastModifiedDate(this.getServletContext()).getModifiedDate2();
if (!com.jdon.jivejdon.util.ToolsUtil.checkHeaderCache(expire, modelLastModifiedDate, request, response)) {
	return ;
}

%>

<%@ page contentType="application/json; charset=UTF-8" %>
{ "results": [<logic:iterate id="threadTag" name="TAGS" indexId="i">
	{ "value": "<bean:write name="threadTag" property="title" />", "info": ""},
</logic:iterate>
    {"value":"", "info": ""}]
}