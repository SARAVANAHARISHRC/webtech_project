<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <div class="container" style="max-width:500px; margin:auto;">
    <div class="card">
      <h2 style="text-align:center;">Create Account</h2>
      <form class="form" action="auth" method="post" autocomplete="on" novalidate>
        <input type="hidden" name="action" value="register"/>

        <!-- Name -->
        <div class="form-row">
          <label for="name">Full Name</label>
          <input 
            type="text" 
            id="name" 
            name="name" 
            placeholder="Enter your full name" 
            required 
            minlength="2" 
            maxlength="50" 
            aria-label="Full Name"
          />
        </div>
<!-- Email -->
        <div class="form-row">
          <label for="email">Email</label>
          <input 
            type="email" 
            id="email" 
            name="email" 
            placeholder="Enter your email address" 
            required 
            autocomplete="email" 
            aria-label="Email"
          />
        </div>

        <!-- Phone -->
        <div class="form-row">
          <label for="phone">Phone (optional)</label>
          <input 
            type="tel" 
            id="phone" 
            name="phone" 
            placeholder="e.g. 9876543210" 
            pattern="[0-9]{10}" 
            title="Enter a valid 10-digit number"
          />
        </div>

        <!-- Password -->
        <div class="form-row">
          <label for="password">Password</label>
          <input 
            type="password" 
            id="password" 
            name="password" 
            placeholder="Create a password" 
            required 
            minlength="6" 
            maxlength="20" 
            autocomplete="new-password" 
            aria-label="Password"
          />
          <small style="color:var(--muted); font-size:0.8rem;">6–20 characters required</small>
        </div>

        <!-- Confirm Password -->
        <div class="form-row">
          <label for="confirmPassword">Confirm Password</label>
          <input 
            type="password" 
            id="confirmPassword" 
            name="confirmPassword" 
            placeholder="Re-enter password" 
            required 
            minlength="6" 
            maxlength="20" 
            autocomplete="new-password"
          />
        </div>
<!-- Show Password -->
        <div class="form-row" style="margin-bottom:1rem;">
          <label>
            <input type="checkbox" onclick="togglePassword()"> Show Password
          </label>
        </div>
 <!-- Submit -->
        <button class="btn" type="submit">Sign Up</button>
  <!-- Extra Links -->
        <p style="margin-top:1rem; text-align:center;">
          Already have an account? <a href="login.jsp">Login here</a>
        </p>
      </form>
    </div>
  </div>

<script>
  function togglePassword() {
    const pwd = document.getElementById("password");
    const cpwd = document.getElementById("confirmPassword");
    pwd.type = pwd.type === "password" ? "text" : "password";
    cpwd.type = cpwd.type === "password" ? "text" : "password";
  }
</script>
</body>
</html>
