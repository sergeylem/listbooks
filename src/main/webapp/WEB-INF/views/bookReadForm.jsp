<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Was the book read?</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
        .panel-title{
            color: #d1cbbc;
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
    </style>
</head>
<body class=".container-fluid" style="background-color:whitesmoke">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading" style="background-color:#786455">
            <h3 class="panel-title" style="color: #d1cbbc">
                Was the book read?
            </h3>
        </div>
        <div class="panel-body">
            <form:form id="BookRegisterForm" cssClass="form-horizontal" modelAttribute="book" method="post" action="editBook">
<%--            <form:form id="BookRegisterForm" cssClass="form-horizontal" modelAttribute="book" method="post" action="saveBook"> --%>

                <div class="form-group">
                    <div class="control-label col-xs-3"> <form:label path="title" >Title</form:label> </div>
                    <div class="col-xs-6">
                        <form:hidden path="id" value="${book.id}"/>
                        <form:input cssClass="form-control" path="title" value="${book.getTitle()}" readonly="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="description" cssClass="control-label col-xs-3">Description</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="description" value="${book.getDescription()}" readonly="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="author" cssClass="control-label col-xs-3">Author</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="author" value="${book.getAuthor()}" readonly="true" />
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="isbn" cssClass="control-label col-xs-3">ISBN</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="isbn" value="${book.getIsbn()}" readonly="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="printYear" cssClass="control-label col-xs-3">Print Year</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="printYear" value="${book.getPrintYear()}" readonly="true" />
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="readAlready" cssClass="control-label col-xs-3">ReadAlready</form:label>
                    <div class="col-xs-6">
                        <label class="radio-inline">
                            <input type="radio" name="readAlready" value="yes" ${book.isReadAlready() ? 'checked' : '' } checked "> Yes
                        </label>

                        <label class="radio-inline">
                            <input type="radio" name="readAlready" value="no" ${book.isReadAlready() ? '' : 'checked'} "/> No
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-4">
                            <input type="submit" class="btn btn-primary" value="Save" />
                        </div>
                        <div class="col-xs-4">
                        </div>
                    </div>
                </div>

            </form:form>
        </div>
    </div>
</div>

</body>
</html>
