// 数据库的各种操作方法


const knex = require('./../knex/knex.js');
class operation{
	constructor(props) {
		this.table = props;
	  }
	  	// 获取指定列表的所有内容
	  all(){
		return new Promise((reslove,reject)=>{
		  knex(this.table).select().then( res => {
        reslove(res)
        }).catch( err => {
        reject(err)
        })
      })
	  }
		// 获取指定列表指定值的内容
		//单个条件查询   
	  select(params) {
		return new Promise((reslove,reject)=>{
		  knex(this.table).where(params).select()
		  .then( res => {
			reslove(res)
		  }).catch( err => {
			reject(err)
		  })
		})
	  }
		// 获取指定列表指定值的内容
		//多个条件查询
	  selectIn(params) {
		return new Promise((reslove,reject)=>{
		  knex(this.table).whereIn(params.key,params.value).select()
		  .then( res => {
			reslove(res)
		  }).catch( err => {
			reject(err)
		  })
		})
	  }
	  // 插入新的内容
	  insert(params){
		return new Promise((reslove,reject)=>{
		  knex(this.table).insert( params )
		  .then( res => {
			reslove(res)
		  }).catch( err => {
			reject(err)
		  })
		})
    }
    // 更新内容
	  update(id, params ){
		return new Promise((reslove,reject)=>{
		  knex(this.table).where('id', '=', id).update( params )
		  .then( res => {
			reslove(res)
		  }).catch( err => {
			reject(err)
		  })
		})
    }
    // 删除指定内容
	  delete(id){
		return new Promise((reslove,reject)=>{
		  knex(this.table).where('id', '=', id).del()
		  .then( res => {
			reslove(res)
		  }).catch( err => {
			reject(err)
		  })
		})
	  }
}
console.log(operation);
module.exports = operation;