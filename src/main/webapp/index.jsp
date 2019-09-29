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

    <c:choose>
        <c:when test="${param.submitted == null}">
            <h2><c:out value="Dodaj album"/></h2>
        </c:when>

        <c:otherwise>

            <jsp:useBean id="newAlbum" class="pl.jnowacki.Album"/>
            <jsp:setProperty name="newAlbum" property="*"/>

            <c:choose>
                <c:when test="${!newAlbum.valid}">
                    <h2><c:out value="Niepoprawne dane!"/></h2>
                </c:when>

                <c:otherwise>
                    ${newAlbum}
                </c:otherwise>
            </c:choose>

        </c:otherwise>

    </c:choose>

</form>

</body>
</html>
