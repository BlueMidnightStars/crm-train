<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{title}}</title>
    {% block css %}
   
    {% endblock %}
</head>
<body>
<!-- 后台公用页面 -->
    {% block content %}
    <div class="layout-section">
        <div class="layout-section">
            <div class="layout-header">
                <p class="layout-header-title">
                    汽车销售管理系统
                </p>
                <div class="layout-header-desc">
                    <p class="layout-user-name">
                        {{ username }}
                    </p>
                    <a href="javascript:;" class="layout-header-quit">退出</a>
                </div>
                
            </div>
            <div class="layout-center-bd">
                <div class="layout-center-bd-listpage">
                    <a href="javascript:;" class="layout-center-bd-listpage-staff">人员管理</a>
                    <a href="javascript:;" class="layout-center-bd-listpage-clue">线索管理</a>
                </div>
                {% block userclue %}
                {% endblock %}
            </div>
        </div>
    </div>
    {% endblock %}

    {% block js %}
    {% endblock %}
</body>
</html>