{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" type="text/css" href="/stylesheets/login.css"/>
{% endblock %}
{% block content %}
<!-- 后台登录页 -->
<div class="login-container">
    <div class="login-section">
        <p class="login-centre-title">留下电话，我们会马上联系你，为你预约优惠名额</p>
        <div class="login-centre-cellphone">
            <p class="login-centre-cellphone-title">手机</p>
            <input type="text" class="login-centre-cellphone-desc" placeholder="请输入手机号码">
        </div>
        <div class="login-centre-password">
            <p class="login-centre-password-title">密码</p>
            <input type="text" class="login-centre-password-desc" placeholder="请输入密码">
        </div>
        <button class="login-centre-save">马上抢占名额</button>
    </div>
</div>
{% endblock %}