<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.kantega.no/aksess/tags/aksess" prefix="aksess" %>
<%@ taglib uri="http://www.kantega.no/aksess/tags/commons" prefix="kantega" %>

<kantega:section id="title">
    <aksess:getattribute name="title"/>
</kantega:section>

<kantega:section id="bodyclass">article</kantega:section>

<kantega:section id="content">
    <h1><aksess:getattribute name="title"/></h1>

    <div class="date">
        <aksess:getmetadata name="publishdate"/>
    </div>

    <aksess:exists name="lead paragraph">
        <p class="leadParagraph">
            <aksess:getattribute name="lead paragraph"/>
        </p>
    </aksess:exists>

    <div class="runningText">
        <ul>
            <aksess:getcollection var="entry" name="News archive" descending="true">
                <li><a href="${entry.url}">${entry.title}</a></li>
            </aksess:getcollection>
        </ul>
        <aksess:exists name="image">
            <div class="image">
                <aksess:getattribute name="image" width="200" height="200"/>
                <aksess:exists name="caption">
                    <div class="caption">
                        <aksess:getattribute name="caption"/>
                    </div>
                </aksess:exists>
            </div>
        </aksess:exists>
        <aksess:getattribute name="running text"/>
    </div>
</kantega:section>

<aksess:include url="/WEB-INF/jsp$SITE/include/design/standard.jsp"/>
