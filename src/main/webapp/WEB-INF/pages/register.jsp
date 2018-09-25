<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
      <h2>Register Form</h2>
      <form method="POST" action="register">

          <!--
          Avoid email valdiation type with HTML5. We want to test the server side checks :-)
          <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">-->


        <div class="form-group row">
          <label for="email" class="col-sm-2 col-form-label">Lastname</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="${user.email}">
          </div>
          <div class="col-sm-3">
            <small id="emailHelp" class="text-danger">
              <c:if test="${not empty error_email}">
                <c:out value="${error_email}"/>
              </c:if>
            </small>
          </div>
        </div>

        <div class="form-group row">
          <label for="lastname" class="col-sm-2 col-form-label">Firstname</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="firstname" value="${user.firstname}">
          </div>
          <div class="col-sm-3">
            <small id="firstnameHelp" class="text-danger">
              <c:if test="${not empty error_firstname}">
                <c:out value="${error_firstname}"/>
              </c:if>
            </small>
          </div>
        </div>

        <div class="form-group row">
          <label for="lastname" class="col-sm-2 col-form-label">Lastname</label>
          <div class="col-sm-7">
            <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Lastname" value="${user.lastname}">
          </div>
          <div class="col-sm-3">
            <small id="lastnameHelp" class="text-danger">
              <c:if test="${not empty error_lastname}">
                <c:out value="${error_lastname}"/>
              </c:if>
            </small>
          </div>
        </div>


        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </body>
</html>
