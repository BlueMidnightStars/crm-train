const mood = require('./../model/user.js');
const user = new mood();

const redact_user = {
    show:async function(req,res,next){
        try{
           let id = req.params.id;
            let edit = await user.select({id:id});
            res.locals.edit = edit;
            res.render('admin/user_edit',res.locals);
        }catch(e){
            res.locals.edit = e;
            res.render('error',res.locals) 
        }
        
    },
    alter:async function(req,res,next){
        try{
            let id = req.params.id;
            let name = req.body.name;
            let phone = req.body.phone;
            let code = req.body.code;
            let role = req.body.role;
            let edits = await user.update(id,{name:name,phone:phone,code:code,role:role});
            res.json({code:'200',data:'修改成功'})
        }catch(e){
            res.locals.edit = e;
            res.json({code:'0',data:e})

            
        }
    }

}
module.exports = redact_user;