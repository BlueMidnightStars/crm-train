var express = require('express');
var router = express.Router();

/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });



// 前台
router.get('/', function(req, res, next) {
  res.render('index');
});
// 后台登录
router.get('/admin/login', function(req, res, next) {
  res.render('admin/login');
});
// 管理人员
router.get('/admin/user', function(req, res, next) {
  res.render('admin/user');
});
// 新增人员
router.get('/admin/user/create', function(req, res, next) {
  res.render('admin/user_create');
});
// 编辑人员
router.get('/admin/user/:id/edit', function(req, res, next) {
  res.render('admin/user_edit');
});
// 线索列表页
router.get('/admin/clue', function(req, res, next) {
  res.render('admin/clue');
});
// // 分配销售
// router.get('/admin/allot', function(req, res, next) {
//   res.render('admin/allot');
// });
// 销售添加跟踪 && 分配销售
router.get('/admin/clue/:id', function(req, res, next) {
  res.render('admin/clue_log');
});
module.exports = router;
