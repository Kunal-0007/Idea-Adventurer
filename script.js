function login() {
  const form = document.querySelector("form");

      form.addEventListener("submit", function(event) {
        event.preventDefault();
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (username === "abc" && password === "abc") {
          window.location.href = "ideaadventurer.html";
        } else {
          document.getElementById("message").innerHTML = "Invalid username or password";
        }
      });
}
