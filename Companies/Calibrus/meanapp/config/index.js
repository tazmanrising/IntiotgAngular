var configValues = require('./config');  // in folder it will get the config.json file

// better decrypt   ,  connection string   ... dev / prod 

module.exports = {

    getDbConnectionString: function() {
        
        //return 'mongodb://' + configValues.uname + ':' + configValues.pwd + '@10.100.40.204:27017/CalibrusServers';
        

        //return 'mongodb://root:bitnami@10.100.40.204:27017/nodetodosample';

        return 'mongodb://' + configValues.uname + ':' + configValues.pwd + '@10.100.40.204:27017/CalibrusServers';

        //return 'mongodb://root:bitnami@10.100.40.204:27017/nodetodos?authSource=admin';  



        //return 'mongodb://cal:cal@10.100.40.204:27017/nodetodosample';

        //return 'mongodb://' + configValues.uname + ':' + configValues.pwd + '@localhost:27017/nodetodosample';
        //https://api.mlab.com/api/1/databases?apiKey=2E81PUmPFI84t7UIc_5YdldAp1ruUPKye
        //https://api.mlab.com/api/1/databases?apiKey=QjrEc3Nz7bTeNkhC9YGMb1Y0AngKu1Qn

    }
}