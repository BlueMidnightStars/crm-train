var express = require('express');
var router = express.Router();

/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });
let authController = require('./../controller/auth');

let user = require('./../models/user');
let index = require('./../models/index');
let login = require('./../models/login');
let clue = require('./../models/clue');
let user_edit = require('./../models/user_edit');


// 前台
router.get('/', function(req, res, next) {
  res.render('index');
});
router.post('/', index.show);
// 后台登录
router.get('/admin/login', authController.renderLogin, function(req, res, next) {
  res.render('admin/login');
});
// 登录
router.post('/admin/login', login.show);
// 退出登录
router.get('/quit',login.quit);
// 管理人员
router.get('/admin/user',authController.out,user.show);
// 新增人员
router.get('/admin/user/create',authController.out, function(req, res, next) {
  res.render('admin/user_create');
});
router.post('/admin/user/create',user.create);

// 编辑人员
router.get('/admin/user/:id/edit', authController.out, user_edit.show);
router.put('/admin/user/:id/edit', user_edit.alter);
// 线索列表页
router.get('/admin/clue',authController.out, clue.show);
// 销售添加跟踪 && 分配销售
router.get('/admin/clue/:id',authController.out, clue.log);
router.put('/admin/clue/:id/basic', clue.basic);
router.post('/admin/clue/:id/record', clue.record);

module.exports = router;
