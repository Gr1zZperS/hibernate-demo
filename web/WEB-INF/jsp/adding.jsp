<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrate</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <style><%@include file='../resources/css/style.css'%></style>
    </head>
    <body>
        <div class="container">
            <form action="${pageContext.request.contextPath}/adding" method="post">
                <div class="row">
                    <div id="btn-panel" class="col-sm-12 col-md-12">
                        <input class="btn btn-success" formaction="/adding" type="submit" value="Submit">
                        <input class="btn btn-warning" formaction="/" type="submit" value="Cancel">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-sm-12 col-md-8">
                        <div class="form-group">
                            <label>Enter your question</label>
                            <textarea class="form-control" rows="2" name="question"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Enter your answers, mark if it is correct</label>
                                <textarea class="form-control" rows="1" name="answer1"></textarea>
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <small class="form-text text-muted">mark correct answer</small>
                            </label>
                            <textarea class="form-control" rows="1" name="answer2"></textarea>
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <small class="form-text text-muted">mark correct answer</small>
                            </label>
                            <textarea class="form-control" rows="1" name="answer3"></textarea>
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <small class="form-text text-muted">mark correct answer</small>
                            </label>
                            <textarea class="form-control" rows="1" name="answer4"></textarea>
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <small class="form-text text-muted">mark correct answer</small>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </form>
        </div> 
    </body>
</html>