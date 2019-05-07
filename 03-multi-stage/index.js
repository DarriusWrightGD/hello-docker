const app = require('express')();

app.get('/ping', (_, res) => res.send('pong'));

app.listen(5001, () => console.log('Server started'));