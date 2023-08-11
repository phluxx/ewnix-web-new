<template>
  <div class="content">
    <p>Welcome to the Ewnix Chat Server's home page!</p>
    <p>Ewnix is an LDAP-authenticated IRCv3 server aimed at bringing you the most unique, fun, and new IRCv3 features available today. To request access, please <a href="https://ldap.ewnix.net/request">click here</a> or select the appropriate menu item to your right. To learn more about us, please see the <router-link to="/about">About</router-link> page!</p>
    <p>We look forward to seeing you soon!</p>
  </div>
</template>

<style>
body {
  background-image: url('img/background.jpeg');
  background-size: cover;
  font-family: Arial, sans-serif;
}

.content {
  margin-right: 220px; 
  padding: 10px;
  border-radius: 10px;
  background-color: rgba(255, 255, 255, 0.8);
}

.header {
  background-color: rgba(76, 175, 80, 0.8);
  color: white;
  padding: 10px;
  border-radius: 10px;
  text-align: center;
  margin-bottom: 30px;
}

.menu {
  float: right;
  width: 200px;
}

.menu a {
  color: white;
  text-decoration: none;
}

.menu ul {
  list-style-type: none;
  padding: 0;
}

.menu li {
  margin-bottom: 10px;
  background-color: rgba(76, 175, 80, 0.8);
  color: white;
  padding: 10px;
  border-radius: 10px;
  text-align: center;
}

.menu li:hover {
  background-color: #388E3C;
  cursor: pointer;
}

.content a {
  color: #4CAF50;
  text-decoration: none;
}

.content a:hover {
  color: #388E3C;
}
</style>

