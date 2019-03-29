const mood = require('../model/user.js');
const user = new mood();
const time = require('../utils/time.js');
const referModel= {
    show: async function(req,res,next){
      try{
        const users = await user.all();
        res.locals.users = users.map((data)=>{
          data.created_time_display = time(data.created_time);
          return data
        });
        res.render('admin/user',res.locals)
      }catch(e){
        res.locals.error = e;
        res.render('error',res.locals);
      }
    },
    create:async function(req,res,next){
      try{
        let name = req.body.name;
        let phone = req.body.phone;
        let code = req.body.code;
        let role = req.body.pose;
        const users = await user.insert({name:name,code:code,phone:phone,role:role});
        res.json({code:200,data:'添加成功'});
      }catch(e){
        res.json({code:0,data:'添加不成功'})

      }
    
    }
}
module.exports = referModel;