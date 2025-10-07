
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header.jsp" %>
  <div class="card" style="max-width:480px; margin: 1rem auto;">
    <h2>Login</h2>
    <form class="form" action="auth" method="post" autocomplete="on" novalidate>
      <input type="hidden" name="action" value="login"/>
 <!-- Email Field -->
      <div class="form-row">
        <label for="email">Email</label>
        <input 
          type="email" 
          id="email" 
          name="email" 
          placeholder="Enter your email" 
          required 
          autocomplete="email" 
          aria-label="Email Address"
        />
      </div>
  <!-- Password Field -->
      <div class="form-row">
        <label for="password">Password</label>
        <input 
          type="password" 
          id="password" 
          name="password" 
          placeholder="Enter your password" 
          required 
          minlength="6" 
          maxlength="20" 
          autocomplete="current-password" 
          aria-label="Password"
          pattern=".{6,20}" 
          title="Password must be between 6 and 20 characters"
        />
        <small style="color:var(--muted); font-size:0.8rem;">6–20 characters required</small>
      </div>
 <!-- Remember Me + Show Password -->
      <div class="form-row" style="display:flex; align-items:center; gap:1rem;">
        <label>
          <input type="checkbox" name="remember" value="true"/> Remember me
        </label>
        <label>
          <input type="checkbox" id="showPassword" onclick="togglePassword()"/> Show password
        </label>
      </div>
<!-- Submit Button -->
      <button class="btn" type="submit">Login</button>
  <!-- Error Message -->
      <p class="alert">
        <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
      </p>
<!-- Extra Links -->
      <p style="margin-top:1rem; text-align:center;">
        <a href="forgot.jsp">Forgot Password?</a> | 
        <a href="register.jsp">Create an Account</a>
      </p>
    </form>
  </div><script>
  function togglePassword() {
    const pwd = document.getElementById("password");
    pwd.type = (pwd.type === "password") ? "text" : "password";
  }
</script><%@ include file="footer.jsp" %>
