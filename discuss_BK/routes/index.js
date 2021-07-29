var express = require('express');
var router = express.Router();
var path = require('path');

const {
  buildStatus,
  HTTPCodes,
  buildError
} = require('../utils/helper')

const {
  connection
} = require('../utils/helper')

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'flowers' });
});

router.get('/app/*', function (req, res, next) {
  res.sendFile(path.join(__dirname,'../public','index.html'));
});


router.get('/getQuestion/:qid',async function (req, res, next) {
  console.log(req.params.qid)
  let pool;
  try {
    pool = await connection()
    pool.getConnection(function (err, connection) {
      if (err) {
        next(err)
        return
      }
      connection.query('call GET_QUESTION('+req.params.qid+')', function (err, result) {
        connection.release()
        if (err) {
          next(err)
          return
        }
        try {
          buildStatus(res, HTTPCodes.SUCCESS, result)
        } catch (err) {
          next(err)
        }
      })
    })
  } catch (err) {
    next(err)
  }
});


router.post('/getComments', async function (req, res, next) {
  let pool;
  try {
    pool = await connection()
    pool.getConnection(function (err, connection) {
      if (err) {
        next(err)
        return
      }
      connection.query('call LATEST_COMMENTS('+'"'+req.body.timestamp+'"'+','+req.body.question_id+')', function (err, result) {
        connection.release()
        if (err) {
          next(err)
          return
        }
        try {
          console.log(result);
          buildStatus(res, HTTPCodes.SUCCESS, result)
        } catch (err) {
          next(err)
          return
        }
      })
    })
  } catch (err) {
    next(err)
  }
});

router.post('/initialComments', async function (req, res, next) {
  let pool;
  try {
    pool = await connection()
    pool.getConnection(function (err, connection) {
      if (err) {
        next(err)
      }
      connection.query('call TOP10_COMMENTS('+'"'+req.body.timestamp+'"'+','+req.body.question_id+')', function (err, result) {
        connection.release()
        console.log(result);
        
        if (err) {
          next(err)
          return
        }
        try {
          buildStatus(res, HTTPCodes.SUCCESS, result)
        } catch (err) {
          next(err)
          return
        }
      })
    })
  } catch (err) {
    next(err)
  }
});


router.post('/createComment', async function (req, res, next) {
  let pool;
  try {
    pool = await connection()
    pool.getConnection(function (err, connection) {
      if (err) {
        next(err)
      }
      connection.query('call CREATE_COMMENT('+'"'+req.body.comment+'"'+','+req.body.question_id+','+'"'+req.body.commentName+'"'+')', function (err, result) {
        connection.release()
        if (err) {
          next(err)
          return
        }
        try {
          buildStatus(res, HTTPCodes.SUCCESS, result)
        } catch (err) {
          next(err)
          return
        }
      })
    })
  } catch (err) {
    next(err)
    return
  }
});

router.post('/createQuestion', async function (req, res, next) {
  let pool;
  try {
    pool = await connection()
    pool.getConnection(function (err, connection) {
      if (err) {
        next(err)
      }
      connection.query('call CREATE_QUESTION('+'"'+req.body.question+'"'+')', function (err, result) {
        connection.release()
        if (err) {
          next(err)
          return
        }
        try {
          buildStatus(res, HTTPCodes.SUCCESS, result)
        } catch (err) {
          next(err)
          return
        }
      })
    })
  } catch (err) {
    next(err)
    return
  }
});

module.exports = router;
