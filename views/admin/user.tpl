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
                <tr>
                    <td class="crew-list-item-name-desc">姓名</td>
                    <td class="crew-list-cellphone-desc">电话</td>
                    <td class="crew-list-part-desc">角色</td>
                    <td class="crew-list-time-desc">创建时间</td>
                    <td class="crew-list-handle-desc"><a class="crew-list-handle-desc-a" href="javascript:;">操作</a></td>
                </tr>
            </table>
        </div>
    </div>
{% endblock %}