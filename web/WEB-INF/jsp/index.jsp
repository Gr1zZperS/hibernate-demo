<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
     	<style><%@include file='../resources/css/style.css'%></style>
    </head>
    <body>
        <div class="container">
        	<div class="row">
                <div id="btn-panel" class="col-sm-12 col-md-12">
                    <a href="/adding"><button class="btn btn-success">Add</button></a>
                    <a href="/removing"><button class="btn btn-warning">Remove</button></a>
                    <a href="/updating"><button class="btn btn-primary">Update</button></a>
                </div>
        	</div>
        	<div class="row">
                <div id="card-panel" class="col-sm-12 col-md-12">
                    <div class="card" style="width: 20rem;">
                        <div class="card-body">
                            <h3 class="card-title">Java Basic</h3>
                            <p class="card-text">
                                Test your skills in Java SE. For better understanding the basics,
                                please use the official documentation
                                <a href="https://docs.oracle.com/en/">link</a>
                            </p>
                            <a href="/start"><button class="btn btn-success">Start</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
