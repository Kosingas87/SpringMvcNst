<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" href="#">Active</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Separated link</a>
    </div>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    
       <sec:authorize access="!isAuthenticated()"> -->
	<c:url var="loginUrl" value="login" />
	<form action="${loginUrl}" method="post">
	
	<a class="nav-link " type="submit">Log In</a>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
</form>
	</sec:authorize>
  </li>
</ul>