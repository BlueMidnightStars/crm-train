{% extends './../layout.tpl' %}
{% block css %}
 <link rel="stylesheet" href="/stylesheets/public.css">
<link rel="stylesheet" href="/stylesheets/clue.css"/>
{% endblock %}

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
                    <a href="javascript:;" class="layout-center-bd-listpage-clue">线索管理</a>
                </div>
                <div class="redact-section">
                    <div class="redact-header-container">
                        <p class="redact-header-title">线索管理</p>
                        <a class="redact-header-desc" href="javascript:;">新增人员 >></a>
                    </div>
                    <div class="crew-container">
                        <table class="crew-list" border="0" cellspacing="0">
                            <tr>
                                <th class="crew-list-item-name">姓名</th>
                                <th class="crew-list-cellphone">电话</th>
                                <th class="crew-list-part">来源</th>
                                <th class="crew-list-time">创建时间</th>
                                <th class="crew-list-item-follow">跟踪销售</th>
                                <th class="crew-list-handle">操作</th>
                            </tr>
                            <tr>
                                <td class="crew-list-item-name-desc">姓名</td>
                                <td class="crew-list-cellphone-desc">电话</td>
                                <td class="crew-list-part-desc">来源</td>
                                <td class="crew-list-time-desc">创建时间</td>
                                <td class="crew-list-item-follow-desc">跟踪销售</td>
                                <td class="crew-list-handle-desc"><a class="crew-list-handle-desc-a" href="javascript:;">跟踪</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}

{% block js %}
{% endblock %}
