<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List books!</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }

        .btn {
            padding: 2px 2px;
            width: 5em;
            height: 2em;
            background-color: #4d3a1e;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

        .btn:hover, .btn:focus {
            border: 1px solid #4d3a1e;
            background-color: #fff;
            color: #000;
        }

        a.aEdit:link, a.aDelete:link {
            color: #a83016;
        }

        a.aEdit:visited, a.aDelete:visited {
            color: #947872;
        }

        a.aEdit:hover, a.aDelete:hover {
            color: #60a870;
        }

        a.aEdit:active, a.aDelete:active {
            color: #ded728;
        }

        a.aCreateBook:link {
            color: #d1cbbc;
        }

        a.aCreateBook:visited {
            color: #c4bba5;
        }

        a.aCreateBook:hover {
            color: #a0cc95;
        }

        .panel-footer a{
            font-size: 1.2em;
        }
        .panel-footer a:link {
            color: #d1cbbc;
        }

        .panel-footer a:visited {
            color: #c4bba5;
        }

        .panel-footer a:hover {
            color: #a0cc95;
        }

        .panel-footer a:active {
            color: #ded728;
        }

    </style>
</head>
<body class=".container-fluid" style="background-color:whitesmoke">
<div class="container myrow-container">
    <div class="panel">
        <div class="panel-heading" style="background-color:#786455">
            <h3 class="panel-title ">
                <div align="left"><a class="aCreateBook" href="createBook">Create new book</a></div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty bookList}">
                There are no Books!
            </c:if>
            <c:if test="${not empty bookList}">
                <form role="search" action="searchName" method="post">
                    <div class="row">
                        <div class="col-md-2">Search by Name:</div>
                        <div class="col-md-2"><input type="text" name="searchName" id="searchName"
                                                     placeholder="type name here.."></div>
                        <div class="col-md-2"><input class="btn btn-primary" type='submit' value='Search'/></div>
                    </div>
                </form>

                <form role="search" action="searchAuthor" method="post">
                    <div class="row">
                        <div class="col-md-2">Search by Author:</div>
                        <div class="col-md-2"><input type="text" name="searchAuthor" id="searchAuthor"
                                                     placeholder="type name here.."></div>
                        <div class="col-md-2"><input class="btn btn-primary" type='submit' value='Search'/></div>
                    </div>
                </form>

                <table class="table table-hover table-bordered">
                    <thead style="background-color: #b39b89;">
                    <tr>
                        <th>Id</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Author</th>
                        <th>ISBN</th>
                        <th>Print Year</th>
                        <th>Read Already</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${bookList}" var="book">
                        <tr>
                            <th><c:out value="${book.getId()}"/></th>
                            <th><c:out value="${book.getTitle()}"/></th>
                            <th><c:out value="${book.getDescription()}"/></th>
                            <th><c:out value="${book.getAuthor()}"/></th>
                            <th><c:out value="${book.getIsbn()}"/></th>
                            <th><c:out value="${book.getPrintYear()}"/></th>
                            <th><c:out value="${book.isReadAlready()}"/></th>
                            <th><a href="<c:url value='/editBook/${book.id}'/>">Edit</a></th>
                            <td><a href="<c:url value='/deleteBook/${book.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
        <div align="center" class="panel-footer" style="background-color:#786455" id="pagination">
            <c:url value="/" var="prev">
                <c:param name="page" value="${page-1}"/>
            </c:url>
            <c:if test="${page > 1}">
                <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
            </c:if>

            <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                <c:choose>
                    <c:when test="${page == i.index}">
                        <span>${i.index}</span>
                    </c:when>
                    <c:otherwise>
                        <c:url value="/" var="url">
                            <c:param name="page" value="${i.index}"/>
                        </c:url>
                        <a href='<c:out value="${url}" />'>${i.index}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:url value="/" var="next">
                <c:param name="page" value="${page + 1}"/>
            </c:url>
            <c:if test="${page + 1 <= maxPages}">
                <a href='<c:out value="${next}" />' class="pn next">Next</a>
            </c:if>
        </div>
    </div>


</body>
</html>
