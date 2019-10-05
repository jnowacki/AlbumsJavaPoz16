<%@ page import="java.util.ArrayList" %>
<%@ page import="pl.jnowacki.Album" %>
<%@ page import="java.util.List" %>
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

    table, th, td {
        border: 1px solid black;
    }
</style>
<body>

<form method="post">
    <label for="title" class="label">Title:</label>
    <input type="text" id="title" name="title"><br/>

    <label for="author" class="label">Author:</label>
    <input type="text" id="author" name="author"><br/>

    <label for="year" class="label">Year:</label>
    <input type="text" id="year" name="year"><br/>

    <input type="hidden" name="submitted" value="true">

    <input type="submit" value="Send">

    <br/>
</form>

<jsp:useBean id="newAlbum" class="pl.jnowacki.Album"/>
<jsp:setProperty name="newAlbum" property="*"/>

<c:choose>
    <c:when test="${param.submitted == null}">
        <h2><c:out value="Dodaj album"/></h2>
    </c:when>

    <c:otherwise>
        <c:choose>
            <c:when test="${!newAlbum.valid}">
                <h2><c:out value="Niepoprawne dane!"/></h2>
            </c:when>

            <c:otherwise>
                <%
                    List<Album> albums = ((List<Album>) request.getSession().getAttribute("albums"));
                    albums.add(newAlbum);
                %>
            </c:otherwise>
        </c:choose>
    </c:otherwise>

</c:choose>

<c:if test="${!empty sessionScope.albums}">
    <table>
        <tr>
            <td>Id</td>
            <td>Title</td>
            <td>Author</td>
            <td>Year</td>
        </tr>
        <c:forEach items="${sessionScope.albums}" var="album" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${album.title}</td>
                <td>${album.author}</td>
                <td>${album.year}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>


</body>
</html>
