<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/nav.jsp"%>

<!-- 内容主体 -->
<div class="layui-body body">
  <fieldset class="layui-elem-field layui-field-title">
    <legend>地点管理</legend>
    <a href="${contextPath}/admin/place/building/add/route.action">
      <button class="layui-btn layui-btn-normal elementAddBtn" id="addPlaceBuilding'">添加</button>
    </a>
    <div class="layui-field-box">
      <table class="layui-table">
        <thead>
        <tr>
          <td>序号</td>
          <td>校区编号</td>
          <td>校区名</td>
          <td>地点编号</td>
          <td>地点名称</td>
          <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${building}" var="building" varStatus="status">
          <tr>
            <td>${status.index + 1}</td>
            <td>${building.distinctNumber}</td>
            <td>${building.distinctName}</td>
            <td>${building.buildingNumber}</td>
            <td>${building.buildingName}</td>

            <td>
              <div class="layui-btn-group">
                <a href="${contextPath}/admin/place/building/edit/route/${building.buildingId}.action">
                  <button class="layui-btn layui-btn-small layui-btn-warm"><i class="layui-icon">&#xe642;</i></button>
                </a>
                <a href="${contextPath}/admin/place/building/delete/${building.buildingId}.action">
                  <button class="layui-btn layui-btn-small layui-btn-danger"><i class="layui-icon">&#xe640;</i></button>
                </a>
              </div>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </fieldset>
</div>

<%@ include file="/WEB-INF/include/javascript.jsp"%>

<script>
  $(function () {
    //导航栏选择
    $("#first").attr("class", "layui-nav-item layui-nav-itemed");
    $("#placeBuilding").attr("class", "layui-this");

    // 删除提示弹出提示
    function deleteConfirm($deleteBtn) {
      event.preventDefault();

      layer.confirm('确定要删除 ?', {
        btn: ['确定', '取消']
      }, function(index, layero) {
        layer.closeAll('dialog');
        $deleteBtn.unbind('click');
        $deleteBtn.trigger('click');
      }, function(index) {

      });
    }

    $(":button.layui-btn-danger").click(function () {
      var $deleteBtn = $(this);
      deleteConfirm($deleteBtn);
    });
  });
</script>

<%@ include file="/WEB-INF/include/footer.jsp"%>
