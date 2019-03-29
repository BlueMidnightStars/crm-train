{% extends './../public.tpl' %}
{% block css %}
    <link rel="stylesheet" href="/stylesheets/public.css">
    <link rel="stylesheet" href="/stylesheets/user-edit_add.css">
{% endblock %}
{% block userclue  %}
<!-- 编辑人员 -->
    <div class="redact-section">
        <div class="redact-header-container">
            <p class="redact-header-title">编辑人员</p>
            <a class="redact-header-desc" href="javascript:;">返回用户列表页</a>
        </div>
        <div class="redact-container" data-id="{{edit[0].id}}">
            <div class="redact-name-container">
                <p class="redact-name-title">姓名</p>
                <input type="text" value="{{edit[0].name}}" class="redact-name">
            </div>
            <div class="redact-cellphone-container">
                <p class="redact-cellphone-title">手机</p>
                <input type="text" value="{{edit[0].phone}}" class="redact-cellphone">
            </div>
           <div class="redact-code-container">
               <p class="redact-code-title">密码</p>
               <input type="text" value="{{edit[0].code}}" class="redact-code">
           </div>
            <div class="redact-pose-container">
                <p class="redact-pose-title">职位</p>
                <select class="redact-pose">
                    <option class="redact-pose-item" {{'selected=selected' if edit[0].role == 1 else '' }} value="管理员" data-id="1">管理员</option>
                    <option class="redact-pose-item" {{'selected=selected' if edit[0].role == 2 else '' }} value="销售" data-id="2">销售</option>  
                </select>
            </div>
            
            <button class="redact-save">保存</button>
        </div>
    </div>
{% endblock %}
{% block js %}

<script src="/javascripts/jquery.js"></script>
<script>
    const edit = {
        init:function(){
            this.bind();
        },
        bind:function(){
            $('.redact-save').on('click',this.refer)
            $('.redact-header-desc').on('click',this.skip)
        },
        refer:function(){
            let id = $('.redact-container').data('id');
            let name = $('.redact-name').val();
            let phone = $('.redact-cellphone').val();
            let code = $('.redact-code').val();
            let role = $('.redact-pose').find("option:selected").data('id');
            console.log(id,name,phone,code,role);
            $.ajax({
                type: 'PUT',
                url: '/admin/user/'+ id +'/edit',
                data: {id,name,phone,code,role},
                success: ( res )=>{
                    console.log(res)
                    if(res.code == 200){
                        location.href = '/admin/user'
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })
        },
        skip:function(){
            location.href = '/admin/user'
        }
    }
    edit.init();






</script>
{% endblock %}