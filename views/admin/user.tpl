{% extends './../public.tpl' %}
{% block css %}
    <link rel="stylesheet" href="/stylesheets/public.css">
    <link rel="stylesheet" href="/stylesheets/user-list.css">
{% endblock %}
{% block userclue  %}
<!-- 人员管理 -->
    <div class="redact-section">
        <div class="redact-header-container">
            <p class="redact-header-title">人员管理</p>
            <a class="redact-header-desc" href="javascript:;">新增人员 >></a>
        </div>
        <div class="crew-container">
            <table class="crew-list" border="0" cellspacing="0">
                <tr>
                    <th class="crew-list-item-name">姓名</th>
                    <th class="crew-list-cellphone">电话</th>
                    <th class="crew-list-part">角色</th>
                    <th class="crew-list-time">创建时间</th>
                    <th class="crew-list-handle">操作</th>

                </tr>
                {{users}}
                {% for val in users  %}
                <tr>
                    <td class="crew-list-item-name-desc">{{val.name}}</td>
                    <td class="crew-list-cellphone-desc">{{val.phone}}</td>
                    {% if val.role == 1 %} 
                    <td class="crew-list-part-desc">管理</td>
                    {% elif val.role == 2 %}
                    <td class="crew-list-part-desc">销售</td>
                    {% endif %}
                    <td class="crew-list-time-desc">{{val.created_time}}</td>
                    <td class="crew-list-handle-desc"><a class="crew-list-handle-desc-a" href="javascript:;">操作</a></td>
                </tr>
                {% endfor %}
            </table>
        </div>
    </div>
{% endblock %}