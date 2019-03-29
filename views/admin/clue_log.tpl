{% extends './../public.tpl' %}
{% block css %}
 <link rel="stylesheet" href="/stylesheets/public.css">
  <link rel="stylesheet" href="/stylesheets/clue_log.css">
{% endblock %}

{% block userclue %}
<div class="redact-section">
    <div class="redact-header-container">
        <p class="redact-header-title">跟踪线索</p>
        <a class="redact-header-desc" href="javascript:;">返回线索列表</a>
    </div>
    <div class="allot-section" data-id="{{clues[0].id}}">
        <div class="allot-section-redact">
            <p class="allot-redact-matter">客户名称：{{clues[0].name}}</p>
            <p class="allot-redact-matter">联系电话：{{clues[0].number}}</p>
            <p class="allot-redact-matter">线索来源：{{clues[0].utm}}</p>
            <p class="allot-redact-matter">创建时间：{{clues[0].created_time_display}}</p>
            <div class="allot-redact-state">
                <p class="allot-redact-state-title">
                    用户状态:
                </p>
                <select class="allot-redact-state-select">
                    <option data-id="1" {{'selected=selected' if clues[0].status == 1 else '' }}>没有意向</option>
                    <option data-id="2" {{'selected=selected' if clues[0].status == 2 else '' }}>意向一般</option>
                    <option data-id="3" {{'selected=selected' if clues[0].status == 3 else '' }}>意向强烈</option>
                    <option data-id="4" {{'selected=selected' if clues[0].status == 4 else '' }}>完成销售</option>
                    <option data-id="5" {{'selected=selected' if clues[0].status == 5 else '' }}>取消销售</option>
                  </select>
            </div>
             {% if userInfo.role == 1 %}
                <div class="allot-redact-staff">
                    <p class="allot-redact-staff-title">
                        当前分配销售:
                    </p>
                    <select class="allot-redact-staff-select">
                        <option >暂无</option>
                        {% for val in users  %}
                        <option data-id="{{val.id}}" {{'selected=selected' if clues[0].user_id == val.id else '' }}>{{val.name}}</option>
                        {% endfor %}
                    </select>
                </div>
            {% endif %}
            
            <div class="allot-redact-remark">
                <p class="allot-redact-remark-title">
                    备注
                </p>
                <textarea placeholder="{{clues[0].remark}}" value="{{clues[0].remark}}" class="allot-redact-remark-textarea"></textarea>
            </div>
            <button class="allot-redact-save">保存</button>
        </div>
        <div class="allot-section-affixion">
            <div class="allot-section-affixion-history-list">
                    {% for val in log  %}
                    <div class="allot-section-affixion-history-list-item">
                        <p class="allot-section-affixion-history-list-item-time">{{val.created_time_display}}</p>
                        <p class="allot-section-affixion-history-list-item-title">{{val.content}}</p>
                    </div>
                    {% endfor %}

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
<script>
    const refer = {
        init:function(){
            this.bind()
        },
        bind:function(){
            $('.allot-redact-save').on('click',this.refer);
            $('.allot-section-affixion-add-save').on('click',this.record);
        },
        refer:function(){
            let id = $('.allot-section').data('id');
            let state = $('.allot-redact-state-select').find("option:selected").data('id');
            let market = $('.allot-redact-staff-select').find("option:selected").data('id');
            console.log(state,market);
            let remarktextarea = $('.allot-redact-remark-textarea').val();
            console.log(id,remarktextarea);
            $.ajax({
                type: 'PUT',
                url: '/admin/clue/'+ id + '/basic',
                data: {state, market, remarktextarea},
                success: ( res )=>{
                    console.log(res);
                    
                    if(res.code === 200){
                        location.reload()
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })
        },
        record:function(){
            let id = $('.allot-section').data('id');
            let val = $('.allot-section-affixion-add-textarea').val();
            $.ajax({
                type: 'post',
                url: '/admin/clue/'+ id + '/record',
                data: {val},
                success: ( res )=>{
                    console.log(res);
                    if(res.code === 200){
                        location.reload()
                    }
                },
                error: (err) => {
                    console.log(err)
                }
            })
        }
    }
    refer.init();
</script>
{% endblock %}