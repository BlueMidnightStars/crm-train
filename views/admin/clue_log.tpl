{% extends './../public.tpl' %}
{% block css %}
 <link rel="stylesheet" href="/stylesheets/public.css">
  <link rel="stylesheet" href="/stylesheets/allot.css">
{% endblock %}

{% block userclue %}
<div class="redact-section">
    <div class="redact-header-container">
        <p class="redact-header-title">跟踪线索</p>
        <a class="redact-header-desc" href="javascript:;">返回线索列表</a>
    </div>
    <div class="allot-section">
        <div class="allot-section-redact">
            <p class="allot-redact-matter">客户名称：{{name}}</p>
            <p class="allot-redact-matter">联系电话：{{phone}}</p>
            <p class="allot-redact-matter">线索来源：{{source}}</p>
            <p class="allot-redact-matter">创建时间：{{time}}</p>
            <div class="allot-redact-state">
                <p class="allot-redact-state-title">
                    用户状态:
                </p>
                <select class="allot-redact-state-select">
                    <option value="1">没有意向</option>
                    <option value="2">意向一般</option>
                    <option value="3">意向强烈</option>
                    <option value="4">完成销售</option>
                    <option value="5">取消销售</option>
                  </select>
            </div>
            <div class="allot-redact-staff">
                <p class="allot-redact-staff-title">
                    当前分配销售:
                </p>
                <select class="allot-redact-staff-select">
                    <option value="1">陈某某</option>
                    <option value="2">黄某某</option>
                    <option value="3">房某某</option>
                    <option value="4">谢某某</option>
                    <option value="5">吴某某</option>
                  </select>
            </div>
            <div class="allot-redact-remark">
                <p class="allot-redact-remark-title">
                    备注
                </p>
                <textarea class="allot-redact-remark-textarea"></textarea>
            </div>
            <button class="allot-redact-save">保存</button>
        </div>
        <div class="allot-section-affixion">
            <div class="allot-section-affixion-history-list">
                <div class="allot-section-affixion-history-list-item">
                    <p class="allot-section-affixion-history-list-item-time">2019/03/17 16:03:12</p>
                    <p class="allot-section-affixion-history-list-item-title">跟踪内容</p>
                </div>
            </div>
            <div class="allot-section-affixion-add">
                <p class="allot-section-affixion-add-title">添加记录</p>
                <textarea class="allot-section-affixion-add-textarea"></textarea>
               
            </div>
            <button class="allot-section-affixion-add-save">添加</button>
        </div> 
    </div>
</div>
{% endblock %}

{% block js %}
{% endblock %}