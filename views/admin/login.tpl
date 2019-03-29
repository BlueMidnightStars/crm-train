{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" type="text/css" href="/stylesheets/login.css"/>
{% endblock %}
{% block content %}
<!-- 后台登录页 -->
<div class="login-container">
    <div class="login-section">
        <p class="login-centre-title">后台管理登录系统</p>
        <div class="login-centre-cellphone">
            <p class="login-centre-cellphone-title">手机</p>
            <input type="text" class="login-centre-cellphone-desc" placeholder="请输入手机号码">
        </div>
        <div class="login-centre-password">
            <p class="login-centre-password-title">密码</p>
            <input type="text" class="login-centre-password-desc" placeholder="请输入密码">
        </div>
        <button class="login-centre-save">登录</button>
    </div>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/jquery.js"></script>
<script>   
    const enter = {
        init:function(){
            this.bind()
        },
        bind:function(){
            $('.login-centre-save').on('click',this.judge)
        },
        judge:function(){
            let phone = $('.login-centre-cellphone-desc').val();
            let password = $('.login-centre-password-desc').val();
            console.log(phone,password,123);
            if(!phone || !password){
                return
            }
            $.ajax({
                type: 'POST',
                url: '/admin/login',
                data: {phone,password},
                success: ( res )=>{
                    console.log(res);
                    
                    if(res.code === 200){
                        location.reload();
                        // location.href = '/admin/clue'
                    }else{
                        console.log('密码或手机号码错误')
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })

        }
    }
    enter.init();

</script>
{% endblock %}