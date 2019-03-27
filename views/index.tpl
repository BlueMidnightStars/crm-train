{% extends './layout.tpl' %}
{% block css %}
<link rel="stylesheet" href="/stylesheets/index.css"/>
{% endblock %}

{% block content %}
<!--   客户 提交资料-->
<div class="index-container">
    <div class="index-section">
        <p class="index-centre-title">留下电话，我们会马上联系你，为你预约优惠名额</p>
        <div class="index-centre-cellphone">
            <p class="index-centre-cellphone-title">手机</p>
            <input type="text" class="index-centre-cellphone-desc" placeholder="请输入手机号码">
        </div>
        <div class="index-centre-password">
            <p class="index-centre-password-title">姓名</p>
            <input type="text" class="index-centre-password-desc" placeholder="请输入姓名">
        </div>
        <button class="index-centre-save">马上抢占名额</button>
    </div>
</div>
{% endblock %}
{% block js %}
<script src="javascripts/jquery.js"></script>
<script>
    const getData = {
        init:function(){
            this.bind()
        },
        bind:function(){
            $('.index-centre-save').on('click', this.getValue)
        },
        getValue:function(){
            let phone = $('.index-centre-cellphone-desc').val();
            let password = $('.index-centre-password-desc').val();
            if(phone == '' || password == ''){
                return
            }
            console.log(phone,password);
            $.ajax({
                type: 'POST',
                url: '/?source=' + '随意',
                data: {phone,password},
                success: ( res )=>{
                    console.log(res)
                },
                error: (err) => {
                    console.log(err)
                }
            })
        }
    }
    getData.init();
</script>
{% endblock %}