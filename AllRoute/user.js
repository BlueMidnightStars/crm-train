const mood = require('./../model/user.js');
console.log(mood);
const user = new mood();

const userController = {
    show: async function(req,res,next){
      try{
        const users = await user.all();
        res.locals.users = users;
        res.render('admin/user',res.locals)
      }catch(e){
        res.locals.error = e;
        res.render('error',res.locals);
      }
    }
}
module.exports = userController;