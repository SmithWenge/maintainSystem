<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/nav.jsp"%>

<!-- 内容主体 -->
<div class="layui-body body">
  <fieldset class="layui-elem-field">
    <legend>
            <span class="layui-breadcrumb">
              <a href="${contextPath}/admin/place/building/list.action">地点管理</a>
              <a><cite>地点添加</cite></a>
            </span>
    </legend>
    <div style="width: 30%; margin-top: 15px; ">
      <form action="${contextPath}/admin/place/building/add/do.action" method="post" class="layui-form">
        <div class="layui-form-item">
          <label class="layui-form-label">校区名</label>
          <div class="layui-input-block">
              <select name="distinctId" id="distinctId" lay-verify="distinctId">
                <c:forEach items="${placeDistincts}" var="placeDistincts">
                  <option  value="${placeDistincts.distinctId}" >${placeDistincts.distinctName}</option>
                  </c:forEach>
              </select>
            </div>
          </div>
        <div class="layui-form-item">
          <label class="layui-form-label">设备组编号</label>
          <div class="layui-input-block">
            <select name="setId" lay-verify="setId" id="setId">
              <option value="">可不选</option>
              <c:forEach items="${equipmentSets}" var="equipmentSets">
                <option  value="${equipmentSets.setId}" >${equipmentSets.setName}</option>
              </c:forEach>
            </select>
          </div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">地点编号</label>
          <div class="layui-input-block">
            <input type="text" name="buildingNumber" lay-verify="buildingNumber" placeholder="请输入编号" class="layui-input" id="buildingNumber">
          </div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">地点名</label>
          <div class="layui-input-block">
            <input type="text" name="buildingName" lay-verify="buildingName" placeholder="请输入" autocomplete="off" class="layui-input">
          </div>
        </div>
        <div class="layui-form-item">
          <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" lay-submit="" lay-filter="addPlaceBuilding">保存</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
          </div>
        </div>
      </form>
    </div>
  </fieldset>
</div>

<%@ include file="/WEB-INF/include/javascript.jsp"%>

<script>
  $(function () {
    var form = layui.form();

    form.verify({
      buildingNumber: function(value) {
        if(value.length > 4 || value.length < 2) {
          return "地点编号的长度为2到4";
        }

        if (!(/^[0-9]+$/.test(value))) {
          return "请填写数字序列";
        }

        var validateData = { "buildingNumber": $("#buildingNumber").val(),"distinctId":$("#distinctId").val() };
        var uniqueBuildingNumber = false;

        $.ajax({
          type: 'post',
          async: false,
          contentType: 'application/x-www-form-urlencoded',
          dataType: 'json',
          data: validateData,
          url: '${contextPath}/admin/place/building/unique/buildingNumber.action',
          success: function (result) {
            uniqueBuildingNumber = result;
          }
        });

        if (!uniqueBuildingNumber) {
          return "填写的地点编号已存在";
        }
      },
      buildingName: function (value) {
        if (value.length < 2) {
          return "请输入地点名";
        }

        if (!(/^[\u4e00-\u9fa5]+$/.test(value))) {
          return "请输入中文";
        }
      }
    });
  });
</script>


<%@ include file="/WEB-INF/include/footer.jsp"%>