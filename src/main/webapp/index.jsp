<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    .label {
        display: inline-block;
        width: 50px;
        margin-bottom: 10px;
    }
</style>
<body>

<form>
    <label for="title" class="label">Title:</label>
    <input type="text" id="title" name="title"><br/>

    <label for="author" class="label">Author:</label>
    <input type="text" id="author" name="author"><br/>

    <label for="year" class="label">Year:</label>
    <input type="text" id="year" name="year"><br/>

    <input type="hidden" name="submitted" value="true">

    <input type="submit" value="Send">

    <br/>
    <c:if test="${param.submitted != null}">

        <jsp:useBean id="newAlbum" class="pl.jnowacki.Album"/>
        <jsp:setProperty name="newAlbum" property="*"/>

        ${newAlbum}
    </c:if>
</form>

</body>
</html>
