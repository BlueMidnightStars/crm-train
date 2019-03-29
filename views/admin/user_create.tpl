{% extends './../public.tpl' %}
{% block css %}
    <link rel="stylesheet" href="/stylesheets/public.css">
    <link rel="stylesheet" href="/stylesheets/user-edit_add.css">
{% endblock %}
{% block userclue  %}
<!-- 新增人员 -->
    <div class="redact-section">
            <div class="redact-header-container">
                <p class="redact-header-title">新增人员</p>
                <a class="redact-header-desc" href="javascript:;">返回用户列表页</a>
            </div>
        <div class="redact-container">
            <div class="redact-name-container">
                <p class="redact-name-title">姓名</p>
                <input type="text" class="redact-name">
            </div>
            <div class="redact-cellphone-container">
                <p class="redact-cellphone-title">手机</p>
                <input type="text" class="redact-cellphone">
            </div>
           <div class="redact-code-container">
               <p class="redact-code-title">密码</p>
               <input type="text" class="redact-code">
           </div>
            <div class="redact-pose-container">
                <p class="redact-pose-title">职位</p>
                <select class="redact-pose">
                    <option value="管理员" data-id='1'>管理员</option>
                    <option value="销售" data-id='2'>销售</option>
                </select>
            </div>
            
            <button class="redact-save">保存</button>
        </div>
    </div>
{% endblock %}
{% block js %}
<script src="/javascripts/jquery.js"></script>
<script>
    const refer = {
        init:function(){
            this.bind();
        },
        bind:function(){
            $('.redact-save').on('click',this.adduser)
        },
        adduser:function(){
            let name = $('.redact-name').val();
            let phone = $('.redact-cellphone').val();
            let code = $('.redact-code').val();
            let pose = $('.redact-pose').find("option:selected").data('id');
            console.log(name, phone, code, pose);
            $.ajax({
                type: 'POST',
                url: '/admin/user/create',
                data: {name, phone, code, pose},
                success: ( res )=>{
                    console.log(res);
                    
                    if(res.code === 200){
                        location.href = '/admin/user';
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })
        }
    }
    refer.init();
</script>
{% endblock %}