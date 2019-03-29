<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{title}}</title>
    <script src="/javascripts/jquery.js"></script>
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
                        {{ userInfo.name }}
                    </p>
                    <a href="javascript:;" class="layout-header-quit">退出</a>
                </div>
                
            </div>
            <div class="layout-center-bd">
                <div class="layout-center-bd-listpage">
                 {% if userInfo.role == 1 %}
                    <a href="javascript:;" class="layout-center-bd-listpage-staff">人员管理</a>
                {% endif %}
                    
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
    <script>
        const public = {
            init:function(){
                this.bind()
            },
            bind:function(){
                $('.layout-header-quit').on('click',this.quit);
                $('.layout-center-bd-listpage-staff').on('click',this.staff);
                $('.layout-center-bd-listpage-clue').on('click',this.clue);
            },
            quit:function(){
                console.log(123);
                $.ajax({
                    type: 'GET',
                    url: '/quit',
                    data: {},
                    success: ( res )=>{
                        console.log(res)
                        if(res.code == 200){
                            location.href = '/admin/login'
                        }
                    },
                    error: (err) => {
                        console.log(err)
                    }
                })
            },
            staff:function(){
                location.href = '/admin/user'
            },
            clue:function(){
                location.href = '/admin/clue'
            }
        }
        public.init();
    </script>
</body>
</html>