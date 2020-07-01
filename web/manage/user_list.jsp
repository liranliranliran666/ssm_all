<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    java.util.Date currentTime = new java.util.Date();//得到当前系统时间

    String str_date1 = formatter.format(currentTime); //将日期时间格式化
    String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="/manage/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="/manage/css/style.css"/>
        <link href="/manage/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="/manage/assets/css/ace.min.css" />
        <link rel="stylesheet" href="/manage/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="/manage/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="/manage/assets/css/ace-ie.min.css" />
		<![endif]-->
			<script src="/manage/assets/js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='/manage/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='/manage/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/manage/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/manage/assets/js/bootstrap.min.js"></script>
		<script src="/manage/assets/js/typeahead-bs2.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="/manage/assets/js/jquery.dataTables.min.js"></script>
		<script src="/manage/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="/manage/js/H-ui.js"></script>
        <script type="text/javascript" src="/manage/js/H-ui.admin.js"></script>
        <script src="/manage/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="/manage/assets/laydate/laydate.js" type="text/javascript"></script>
<title>用户列表</title>
</head>

<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
      <div class="d_Confirm_Order_style">
    <div class="search_style">
      <div class="title_names">搜索查询</div>
      <div class="search_content clearfix">
          <form action="/user/findByusername" method="post">
            <ul>
                <li><label class="l_f">会员名称</label><input id="un" name="un" type="text"  class="text_add" placeholder="输入会员名称"  style=" width:400px"/></li>
                <li style="width:90px;"><button type="submit" class="btn_search"><i class="icon-search"></i>查询</button></li>
            </ul>
          </form>
    </div>
     <!---->
     <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:void(0);" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
       </span>
       <span class="r_f">共：<b>2345</b>条</span>
     </div>
     <!---->
     <div class="table_menu_list">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="80">ID</th>
				<th width="100">用户名</th>
                <th width="100">真实姓名</th>
				<th width="80">性别</th>
				<th width="120">手机</th>
				<th width="150">邮箱</th>
				<th width="">地址</th>
				<th width="180">加入时间</th>
                <th width="180">等级</th>
				<th width="70">状态</th>                
				<th width="170">操作</th>
			</tr>
		</thead>
	<tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td><a href="${pageContext.request.contextPath}/user/id/${user.id}">${user.id}</a></td>
            <td>${user.username}</td>
            </td>
            <td>${user.name}</td>
            <td>
                <c:choose>
                    <c:when test="${user.sex ==1}">男</c:when>
                    <c:when test="${user.sex ==2}">女</c:when>
                </c:choose>
            </td>
            <td>${user.phone}</td>
            <td>${user.email}</td>
            <td>${user.address}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${user.create_time}"/></td>
            <td>

                <c:choose>
                    <c:when test="${user.user_level <20 && user.user_level>=1}">普通用户 等级:${user.user_level}</c:when>
                    <c:when test="${user.user_level <30 && user.user_level>=20}">银牌用户 等级:${user.user_level}</c:when>
                    <c:when test="${user.user_level <50 && user.user_level>=30}">金牌用户 等级:${user.user_level}</c:when>
                    <c:when test="${user.user_level >50}">钻石用户 等级:${user.user_level}</c:when>
                    <c:otherwise>普通用户 等级:${user.user_level}</c:otherwise>
                </c:choose>

            <td class="td-status">
                <c:choose>
                    <c:when test="${user.status ==1}"><span class="label label-success radius">已启用</span></c:when>
                    <c:when test="${user.status ==2}"><span class="label label-defaunt radius">已停用</span></c:when>
                    <c:otherwise><span class="label label-success radius">已启用</span></c:otherwise>
                </c:choose>
            </td>
            <td class="td-manage">
                <c:choose>
                    <c:when test="${user.status ==1}">  <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a></c:when>
                    <c:when test="${user.status ==2}">  <a onClick="member_start(this,'10001')"  href="javascript:;" title="启用"  class="btn btn-xs btn-radius"><i class="icon-ok bigger-120"></i></a></c:when>
                </c:choose>

                <a title="编辑" onclick="member_edit(this,${user.id})" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a>
                <a title="删除" id="delete" href="javascript:;" onclick="member_del(this,${user.id})" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>
            </td>
        </tr>
    </c:forEach>
      </tbody>
	</table>
   </div>
  </div>
 </div>
</div>
<!--添加用户图层-->
<div class="add_menber" id="add_menber_style" style="display:none">
  
    <ul class=" page-content">
        <form  id="newsFrom" class="form-horizontal input-prepend"  method="post" >
     <li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span class="add_name"><input   name="username" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">真实姓名：</label><span class="add_name"><input  name="name" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label><span class="add_name" >
     <label ><input  type="radio" name="sex" value="1" checked="checked" class="ace"><span class="lbl">男</span></label>&nbsp;&nbsp;&nbsp;
     <label ><input  type="radio" name="sex" value="2" class="ace"><span class="lbl">女</span></label>&nbsp;&nbsp;&nbsp;
     <label ><input  type="radio" name="sex" value="0" class="ace"><span class="lbl">保密</span></label>
     </span>
     <div class="prompt r_f"></div>
     </li>
     <li><label class="label_name">密码：</label><span class="add_name"><input  name="password" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">移动电话：</label><span class="add_name"><input  name="phone" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">电子邮箱：</label><span class="add_name"><input  name="email" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li class="adderss"><label class="label_name">家庭住址：</label><span class="add_name"><input  name="address" type="text"  class="text_add" style=" width:350px"/></span><div class="prompt r_f"></div></li>
            <input name="user_level" type="hidden" value="1">
            <input id="time" name="create_time" type="hidden" value="2020-04-10">
            <li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label><span class="add_name">
     <label><input  value="1" name="status" type="radio" checked="checked" class="ace"><span class="lbl">开启</span></label>&nbsp;&nbsp;&nbsp;
     <label><input  value="2" name="status" type="radio" class="ace"><span class="lbl">关闭</span></label></span><div class="prompt r_f"></div></li>
        </form>
    </ul>
 </div>
<!--修改用户图层-->
<div class="update_menber" id="update_menber_style" style="display:none">
    <ul class=" page-content">
        <form  id="newsFrom2" class="form-horizontal input-prepend"  method="post" >
            <input name="id" type="hidden">
            <li><label class="label_name">用&nbsp;户&nbsp; 名：</label><span class="add_name"><input   name="username" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li><label class="label_name">真实姓名：</label><span class="add_name"><input   name="name" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
        <li>
        <label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： </label>
        <span class="add_name"  >
     <label ><input  type="radio" name="sex" value="1" checked="checked" class="ace"><span class="lbl">男</span></label>&nbsp;&nbsp;&nbsp;
     <label ><input  type="radio" name="sex" value="2" class="ace"><span class="lbl">女</span></label>&nbsp;&nbsp;&nbsp;
     <label ><input  type="radio" name="sex" value="0" class="ace"><span class="lbl">保密</span></label>
        </span> <div class="prompt r_f"></div>
        </li>
            <li><label class="label_name">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label><span class="add_name"><input  name="password" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li><label class="label_name">移动电话：</label><span class="add_name"><input  name="phone" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li><label class="label_name">电子邮箱：</label><span class="add_name"><input   name="email" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
            <li class="adderss"><label class="label_name">家庭住址：</label><span class="add_name"><input   name="address" type="text"  class="text_add" style=" width:350px"/></span><div class="prompt r_f"></div></li>
            <li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态： </label>
                <span class="add_name" >
     <label><input  value="1" name="status" type="radio" checked="checked" class="ace"><span class="lbl">开启</span></label>&nbsp;&nbsp;&nbsp;
     <label><input  value="2" name="status" type="radio" class="ace"><span class="lbl">关闭</span></label>
                </span><div class="prompt r_f"></div></li>
        </form>
    </ul>
</div>
</div>
</body>
</html>
<script>
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
/*用户-添加*/
 $('#member_add').on('click', function(){
    layer.open({
        type: 1,
        title: '添加用户',
		maxmin: true, 
		shadeClose: true, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('.add_menber'),
		btn:['提交' ,'取消'],
		yes:function(index,layero) {
            var newsFrom = layer.getChildFrame('#newsFrom', index);

            var num = 0;
            var str = "";
            $(".add_menber input[type$='text']").each(function (n) {
                if ($(this).val() == "") {
                    layer.alert(str += "" + $(this).attr("name") + "不能为空！\r\n", {
                        title: '提示框',
                        icon: 0,
                    });
                    num++;
                    return false;
                }
            });
            $.ajax({
                type: "POST",
                dataType: "json",  //这个就是重控制器接收的数据格式 json  jar包没有
                url: "/user/addUser",//这个是控制器的路径
                data: $("#newsFrom").serialize(),
                 //newsForm序列化 这个是要给控制器传的参数 传表单里用户输入的内容把？1ok了你在研究把1
                success  :   function(data){
                    //layer.msg('添加成功！');
                    //layer.closeAll();
                    alert("添加成功！");
                    window.location.reload();
                },
                error : function () {
                    alert("异常！");
                    window.location.reload();
                }
            });
        },
        btn2: function() {
            window.location.reload();
        }

    });
});
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url+'#?='+id,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(obj,id){
    $.ajax({
        type: "POST",
        url: '/user/updateId/'+id,  //1            //2
        dataType: "json",                                //3
        success: function (data) {
            var  result=data.user;
            $("input[name='username']").val(result.username);
            $("input[name='name']").val(result.name);
            $("input[name='sex']").val(result.sex);
            $("input[name='password']").val(result.password);
            $("input[name='phone']").val(result.phone);
            $("input[name='email']").val(result.email);
            $("input[name='address']").val(result.address);
            $("input[name='status']").val(result.status);
            console.log(result);

            }
    });

	  layer.open({
        type: 1,
        title: '修改用户信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('.update_menber'),
		btn:['提交','取消'],
          yes:function(index,layero) {
              var newsFrom = layer.getChildFrame('#newsFrom2', index);

              var num = 0;
              var str = "";
              $(".update_menber input[type$='text']").each(function (n) {
                  if ($(this).val() == "") {
                      layer.alert(str += "" + $(this).attr("name") + "不能为空！\r\n", {
                          title: '提示框',
                          icon: 0,
                      });
                      num++;
                      return false;
                  }
              });
              $.ajax({
                  type: "POST",
                  dataType: "json",
                  url: '/user/updateUser/'+id,//这个是控制器的路径
                  data: $("#newsFrom2").serialize(),
                  success  :   function(data){
                      alert("修改成功！");
                      layer.msg("修改成功！", {icon: 1, time: 1000});
                      window.location.reload();
                  },
                  error : function () {
                      alert("修改失败！");
                      window.location.reload();
                  }
              });
          },
          btn2: function() {
              window.location.reload();
          }

      });
};
/*用户-删除*/
function member_del(obj,id){
        layer.confirm('确认要删除吗？', function (index) {
            $(obj).parents("tr").remove();
            $.ajax({
                type: "POST",
                url: '/user/delete/'+id,
                dataType: "json",
                success: function (data) {
                    layer.msg('已删除!', {icon: 1, time: 1000});
                    window.location.reload();
                },
                error : function () {
                    alert("删除失败！");
                    window.location.reload();
                }
            });
        });
    }
laydate({
    elem: '#start',
    event: 'focus' 
});




</script>