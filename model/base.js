// 数据库的各种操作方法
const knex = require('./knex.js');
class operation{
	constructor(props) {
		this.table = props;
	  }
    // 获取指定列表的所有内容
    all(){
        return knex(this.table).select()
    }
    // 获取指定列表指定值的内容
    //单个条件查询   
    select(params) {
        return knex(this.table).where(params).select()
    }
    // 获取指定列表指定值的内容
    //多个条件查询
    selectIn(params) {
        return knex(this.table).whereIn(params.key,params.value).select()
    }
    // 插入新的内容
    insert(params){
        return knex(this.table).insert( params )
    }
    // 更新内容
    update(id, params ){
        return knex(this.table).where('id', '=', id).update( params )
    }
    // 删除指定内容
    delete(id){
        return knex(this.table).where('id', '=', id).del()
    }
}
module.exports = operation;