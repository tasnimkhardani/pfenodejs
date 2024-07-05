const express = require('express')

const app = express()
app.use(express.json());
const port = process.env.PORT || 4000;

const sujetRouter = require('./routes/sujet')


app.use('/sujet',sujetRouter)

app.listen(port, () =>
    console.log(`
  🚀 Server ready at: http://localhost:${port}`),
  );
