var express = require('express');
var sql = require('mssql');

var bookRouter = express.Router();

var router = function(nav){
    var books = [
    {
        title: 'War and Peace',
        genre: 'Historical Fiction',
        author: 'Lev Nikolayevich Tolstoy',
        read: false
        },
    {
        title: 'Les Misérables',
        genre: 'Historical Fiction',
        author: 'Victor Hugo',
        read: false
        },
    {
        title: 'The Time Machine',
        genre: 'Science Fiction',
        author: 'H. G. Wells',
        read: false
        },
    {
        title: 'A Journey into the Center of the Earth',
        genre: 'Science Fiction',
        author: 'Jules Verne',
        read: false
        },
    {
        title: 'The Dark World',
        genre: 'Fantasy',
        author: 'Henry Kuttner',
        read: false
        },
    {
        title: 'The Wind in the Willows',
        genre: 'Fantasy',
        author: 'Kenneth Grahame',
        read: false
        },
    {
        title: 'Life On The Mississippi',
        genre: 'History',
        author: 'Mark Twain',
        read: false
        },
    {
        title: 'Childhood',
        genre: 'Biography',
        author: 'Lev Nikolayevich Tolstoy',
        read: false
        }
    ];
    bookRouter.route('/')
    .get(function (req, res) {

        var request = new sql.Request();
        var result = '';

        request.query('select * from books',
                    function(err, recordset){
                        result = recordset['recordset'];
                        console.log(result);
                        res.render('bookListView', {
                            title: 'Books',
                            nav: nav,
                            books: result  //books
                        });
                    });
    });

    bookRouter.route('/:id')
    .all(function(req, res, next){
        var id = req.params.id;
        var resultSingle = '';
        var ps = new sql.PreparedStatement();
        ps.input('id', sql.Int);
        ps.prepare('select * from books where id = @id',
            function(err){
                ps.execute({
                        id:req.params.id
                    },
                    function(err, recordset){
                        resultSingle = recordset['recordset'];
                        if (resultSingle.length === 0){
                            res.status(404).send('Not Found');
                        } else {
                            req.book = resultSingle[0];
                            next();
                        } 
                    });
                });
    })
    .get(function (req, res) {
        res.render('bookView', {
            title: 'Books',
            nav: nav,
            book: req.book  //resultSingle[0] // books[id]
        });
     });

    return bookRouter;
}
module.exports = router;