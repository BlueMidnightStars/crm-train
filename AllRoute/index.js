const mood = require('./../model/clue.js');
console.log(mood);
const user = new mood();

const userController = {
    show: async function(req,res,next){
      try{
        let phone = req.body.phone;
        let name = req.body.password;
        let source = req.query.source;
        console.log(phone, name)
        console.log(req.query.source,123);
        if(!name || !phone || !source){
            return
        }
        const users = await user.insert({number:phone,name:name,utm:source});
        res.json({code:'200',data:'新增成功'})
      }catch(e){
        res.locals.error = e;
        console.log(req);
        res.json({code:'0',data:e});
      }
    }
}
module.exports = userController;