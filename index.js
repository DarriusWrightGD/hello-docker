const app = require('express')();

app.get('/ping', (req, res) => {
  res.send('pong');
})

app.listen(3000, () => {
  console.log("Server Started");
});