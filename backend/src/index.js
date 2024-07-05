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



  /**
   * 1-create sujet
   * 2-candiat : ychouf les sujet l koll : get all
   *  bch y5tar sujet li 7chtou bih  : get by id 
   * 
   *  bch y3Ml postuler :  userId  sujetId 
   * 
   * 3-admin : ychouf il liste t3 condudature
   * 
   *  ADMIN: ynjm yfs5 sujet , ymodifi sujet ,
   *      
   * 
   * 4-admin : accepter , refuser  ::: PUT
   * 
   * 
   */