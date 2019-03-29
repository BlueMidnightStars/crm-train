


{% extends './../public.tpl' %}
{% block css %}
     <link rel="stylesheet" href="/stylesheets/public.css">
    <link rel="stylesheet" href="/stylesheets/clue.css"/>
{% endblock %}
{% block userclue  %}
<div class="redact-section">
    <div class="redact-header-container">
        <p class="redact-header-title">线索管理</p>
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
            {% for val in clues  %}
            <tr>
                <td class="crew-list-item-name-desc">{{val.name}}</td>
                <td class="crew-list-cellphone-desc">{{val.number}}</td>
                <td class="crew-list-part-desc">{{val.utm}}</td>
                <td class="crew-list-time-desc">{{val.created_time_display}}</td>
                <td class="crew-list-item-follow-desc">{{val.user_id}}</td>
                <td class="crew-list-handle-desc"><a data-id="{{val.id}}" class="crew-list-handle-desc-a" href="javascript:;">跟踪</a></td>
            </tr>
            {% endfor %}
        </table>
    </div>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/jquery.js"></script>
<script>
    const follow = {
        init:function(){
            this.bind()
        },
        bind:function(){
            $('.crew-list-handle-desc-a').on('click',this.handle)
        },
        handle:function(){
            let id = $(this).data('id');
            console.log(id);
            location.href = '/admin/clue/' + id;
        }
    }
    follow.init();
</script>
{% endblock %}


