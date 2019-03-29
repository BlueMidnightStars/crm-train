module.exports = function (req, res, next) {
    res.locals.seo = {
      title: 'CRM',
      keywords: 'CRM 销售机会信息管理',
      description: '奔驰汽车的 CRM 中的销售机会信息管理'
    }
  
    next();
  }