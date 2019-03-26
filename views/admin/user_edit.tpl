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
                    <option value="管理员">管理员</option>
                    <option value="销售">销售</option>
                </select>
            </div>
            
            <button class="redact-save">保存</button>
        </div>
    </div>
{% endblock %}