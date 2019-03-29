const mood = require('./../model/user.js');
const user = new mood();
const authCodeFunc = require('./../utils/authCode.js');

const who = {
    show:async function(req, res, next){
       try{ 
           console.log(res.locals.isLogin);
           let phone = req.body.phone;
            let password = req.body.password;
            let respond = await user.select({phone:phone,code:password});
            let auth_Code = respond[0].id +'\t'+ respond[0].phone +'\t'+ respond[0].created_time +'\t'+ respond[0].name +'\t'+ respond[0].role;
            auth_Code = authCodeFunc(auth_Code,'ENCODE');
            res.cookie('ac', auth_Code, { maxAge: 24* 60 * 60 * 1000, httpOnly: true });
            res.json({code:200,data:"有此用户",token:auth_Code,role:respond[0].role})
        }catch{
            res.json({code:0,data:"无此用户"})
        }
    },
    quit:async function(req,res,next){
        try{
            res.clearCookie('ac');
            res.locals.userInfo = {};
            res.json({code:200,data:'退出成功'})
        }catch(e){
            res.json({code:0,data:'退出失败'})

        }
    }
}
module.exports = who;