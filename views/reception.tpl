{% extends './layout.tpl' %}
{% block css %}
<link rel="stylesheet" href="/stylesheets/reception.css"/>
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
            <p class="index-centre-password-title">密码</p>
            <input type="text" class="index-centre-password-desc" placeholder="请输入密码">
        </div>
        <button class="index-centre-save">马上抢占名额</button>
    </div>
</div>
{% endblock %}