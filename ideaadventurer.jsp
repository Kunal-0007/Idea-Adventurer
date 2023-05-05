<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Idea Generator</title>
    <style>
   body {
font-family: Arial, sans-serif;
padding: 30px;
background-image: url("bg.jpg");
background-size: cover;
}

h1 {
text-align: center;
font-size: 36px;
margin-bottom: 30px;
text-shadow: 2px 2px 3px rgb(0, 0, 0);
}

form {
text-align: center;
background-color: rgba(255, 255, 255, 0.7);
border-radius: 20px;
box-shadow: 2px 2px 5px rgb(0, 0, 0);
padding: 20px;
}

label l1{
font-size: 18px;
display: flex;
  flex-direction: column;
  align-items: center;
  margin-right: 250px;
}

select,
textarea {
font-size: 18px;
padding: 10px;
margin-bottom: 20px;
border-radius: 10px;
border: 1px solid rgb(0, 128, 0);
}

button[type="submit"] {
background-color: rgb(0, 128, 0);
color: white;
padding: 10px 20px;
border-radius: 5px;
cursor: pointer;
border: none;
font-size: 18px;
margin-top: 20px;
transition: background-color 0.2s ease;
box-shadow: 2px 2px 5px rgb(0, 0, 0);
}

button[type="submit"]:hover {
background-color: rgb(53, 94, 59);
}
</style>

  </head>
  <body>
    <h1>Are you here for submitting an idea or seeking an idea?</h1>
    <form>
      <label for="action">Select your role:</label>
      <select id="action">
        <option value="">Select a Role</option>
        <option value="submit">Submit an Idea</option>
        <option value="get">Get an Idea</option>
      </select>
      <br><br>
      <button type="submit">Go</button>
    </form>
    <br>
    <div id="errorMessage" style="display: none; color: red;"></div>
    <br>
    <div id="ideaForm" style="display: none;">
      <h1>Submit an Idea</h1>
      <form>
        <label for="category">Select a Category:</label>
        <select id="category">
          <option value="">Select a Category</option>
          <option value="technology">Technology</option>
          <option value="education">Education</option>
          <option value="entertainment">Entertainment</option>
          <option value="fitness">Fitness</option>
          <option value="food">Food</option>
          <option value="other">Other</option>
        </select>
        <br><br>
        <label l1 for="ideaDescription">Idea Description:</label>
        <textarea id="ideaDescription"></textarea>
        <br><br>
        <button type="submit">Submit</button>
      </form>
    </div>
    <div id="ideaList" style="display: none;">
      <h1>Get an Idea</h1>
      <form>
        <label for="interest">Select an Interest:</label>
        <select id="interest">
          <option value="">Select an Interest</option>
          <option value="technology">Technology</option>
          <option value="education">Education</option>
          <option value="entertainment">Entertainment</option>
          <option value="fitness">Fitness</option>
          <option value="food">Food</option>
          <option value="other">Other</option>
        </select>
        <br><br>
        <button type="submit">Get Idea</button>
      </form>
    </div>
    <script>
      document.querySelector('form').addEventListener('submit', function(event) {
  event.preventDefault();
  const action = document.querySelector('#action').value;
  const errorMessage = document.querySelector('#errorMessage');
  const ideaForm = document.querySelector('#ideaForm');
  const ideaList = document.querySelector('#ideaList');
  errorMessage.style.display = 'none';
  ideaForm.style.display = 'none';
  ideaList.style.display = 'none';

  if (!action) {
    errorMessage.innerHTML = 'Please select an action';
    errorMessage.style.display = 'block';
  } else if (action === 'submit') {
    ideaForm.style.display = 'block';
  } else if (action === 'get') {
    ideaList.style.display = 'block';
  }
});
</script>