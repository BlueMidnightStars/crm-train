const mood = require('./../model/clue.js');
const moodel = require('./../model/user.js');
const moodels = require('./../model/clue_log.js');
const clue = new mood();
const user = new moodel();
const clue_log = new moodels();
const time = require('./../filters/time.js');


console.log(time);
const referclue = {
    show: async function(req,res,next){
      try{
        const clues = await clue.all();
        res.locals.clues = clues.map((data)=>{
          data.created_time_display = time(data.created_time);
          return data
        });
        res.render('admin/clue',res.locals)
      }catch(e){
        res.locals.error = e;
        res.render('error',res.locals);
      }
    },
    log:async function(req,res,next){
      try{
        let id = req.params.id;
        let logdata = await clue.select({id:id});
        const users = await user.all();
        console.log(users);
        res.locals.users = users;
        let log = await clue_log.select({client_id:id});
        res.locals.log = log.map((data)=>{
          data.created_time_display = time(data.created_time);
          return data
        });
        console.log(users);
        res.locals.clues = logdata.map((data)=>{
          data.created_time_display = time(data.created_time);
          return data
        });;
        console.log(logdata)
        res.render('admin/clue_log',res.locals)
      }catch(e){
        res.locals.edit = e;
        res.render('error',res.locals) 
      }
    },
    basic:async function(req,res,next){
      try{
        let id = req.params.id;
        let user_id = req.body.market;
        let status = req.body.state;
        let remark = req.body.remarktextarea;
        console.log(id,user_id,status,remark)
        let logdata = await clue.update(id,{user_id:user_id,status:status});
        if(remark != ''){
          let addremark = await clue.update(id,{remark:remark});
        }
        res.json({code:200,data:'修改成功'})
      }catch(e){
        res.json({code:0,data:e})
      }
      

    },
    record:async function(req,res,next){
      try{
        let id = req.params.id;
        let content = req.body.val;
        let logdata = await clue_log.insert({client_id:id,content:content});
        res.json({code:200,data:'添加成功'});
      }catch(e){
        res.json({code:0,data:e});

      }


    }
}
module.exports = referclue;