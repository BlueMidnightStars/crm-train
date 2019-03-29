const authController = {
    renderLogin:async function(req,res,next){
      // 如果用户已经登录，重定向到用户管理页面
      console.log(res.locals.isLogin, 12312312312);
        if(res.locals.isLogin){
            res.redirect('/admin/clue')
            return
        }
        next()
    },
    // 如果用户未登录，跳往登录页
    out:async function(req,res,next){
      if(!res.locals.isLogin){
        res.redirect('/admin/login')
            return
      }
      next()
    }
 }
 module.exports = authController;