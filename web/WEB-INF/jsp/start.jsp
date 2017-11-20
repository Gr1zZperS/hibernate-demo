<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Test Mode</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file='../resources/css/style.css'%></style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div id="btn-panel" class="col-sm-12 col-md-12">
                    <input class="btn btn-success" formaction="/" type="submit" value="Submit">
                    <input class="btn btn-warning" formaction="/" type="submit" value="Finish">
                </div>
            </div>
            <div class="row">
                <div id="quest-panel" class="col-sm-12 col-md-12">
                    <table>
                        <c:forEach items="${questions}" var="question">
                             <tr>
                                <td><c:out value="${question.getQuestion()}"/></td>
                            </tr>
                            <c:set var="answers" scope="session" value="${question.getAnswers()}"/>
                            <c:forEach items="${answers}" var="answer">
                                <tr>
                                    <td>
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                        </label>
                                    </td>
                                    <td><c:out value="${answer.getAnswer()}"/></td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>