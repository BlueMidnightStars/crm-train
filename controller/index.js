const mood = require('./../model/clue.js');
const user = new mood();

const indexController = {
    show: async function(req,res,next){
      try{
        let phone = req.body.phone;
        let name = req.body.password;
        let source = req.query.source;
        if(!name || !phone || !source){
            return
        }
        const users = await user.insert({number:phone,name:name,utm:source});
        res.json({code:'200',data:'新增成功'})
      }catch(e){
        res.locals.error = e;
        res.json({code:'0',data:e});
      }
    }
}
module.exports = indexController;