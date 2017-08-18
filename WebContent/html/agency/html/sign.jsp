<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>微信营销第三方平台加盟代理_小程序开发_云ERP系统加盟代理_多粉</title>
    <link rel="stylesheet" type="text/css" href="../js/elementui/elementui.css"/>
    <link rel="stylesheet" type="text/css" href="../css/sign.css"/>
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/iconfont/iconfont.css"/>
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="/js/layer/layer.js?<%= System.currentTimeMillis()%>"></script>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>
<div class="a-ag-banner-box">
    <div class="a-ag-banner"></div>
    <div class="a-ag-banner-txt">
        <h1 id="boy_title"></h1>
        <a class="cxb-gobtn" href="#">
            <span class="btnmask"></span>
            <i class="clearmid"></i>
            <div>更多</div>
            <img class="rower" src="../images/brower.png"/>
        </a>
    </div>
</div>
<div class="b-register-box" id="bRegister">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="姓名：" id="name" prop="name"  style="width: 502px;">
            <el-input v-model="ruleForm.name"></el-input>
        </el-form-item>
        <el-form-item label="手机号：" prop="phone" style="width: 502px;">
            <el-input v-model="ruleForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="QQ：" prop="qq" style="width: 502px;">
            <el-input v-model="ruleForm.qq"></el-input>
        </el-form-item>
        <el-form-item label="公司名称：" prop="cname" style="width: 502px;">
            <el-input v-model="ruleForm.cname"></el-input>
        </el-form-item>

        <el-form-item label="详细地址：" prop="region">
            <el-select v-model="ruleForm.provincesName1" placeholder="请选择省份" style="width: 125px;">
                <el-option v-for="item in provinces" :label="item.name" :value="item.name"></el-option>
            </el-select>
            <el-select v-model="ruleForm.cityName1" placeholder="请选择城市" style="width: 125px;margin: 0 10px;">
                <el-option v-if="ruleForm.cityName1 == '请选择城市'" label="请选择城市" value="请选择城市"></el-option>
                <el-option v-for="item in ruleForm.citys1" :label="item.name" :value="item.name"></el-option>
            </el-select>
            <el-select v-model="ruleForm.areaName1" placeholder="请选择区域" style="width: 125px;">
                <el-option v-if="ruleForm.areaName1 == '请选择区域'" label="请选择区域" value="请选择区域"></el-option>
                <el-option v-for="item in ruleForm.areas1" :label="item.name" :value="item.name"></el-option>
            </el-select>
        </el-form-item>
        <el-form-item label="" prop="address" style="width: 502px;">
            <el-input v-model="ruleForm.address"></el-input>
        </el-form-item>
        <el-form-item label="合作区域：" prop="region">
            <el-select v-model="ruleForm.provincesName2" placeholder="请选择省份" style="width: 125px;">
                <el-option v-for="item in provinces" :label="item.name" :value="item.name"></el-option>
            </el-select>
            <el-select v-model="ruleForm.cityName2" placeholder="请选择城市" style="width: 125px;margin: 0 10px;">
                <el-option v-if="ruleForm.cityName2 == '请选择城市'" label="请选择城市" value="请选择城市"></el-option>
                <el-option v-for="item in ruleForm.citys2" :label="item.name" :value="item.name"></el-option>
            </el-select>
            <el-select v-model="ruleForm.areaName2" placeholder="请选择区域" style="width: 125px;">
                <el-option v-if="ruleForm.areaName2 == '请选择区域'" label="请选择区域" value="请选择区域"></el-option>
                <el-option v-for="item in ruleForm.areas2" :label="item.name" :value="item.name"></el-option>
            </el-select>
        </el-form-item>
        <el-form-item>
            <el-button style="width: 90px;margin-left: 80px;margin-top: 28px;" type="primary" @click="submitForm('ruleForm')">保存</el-button>
            <el-button style="width: 90px;margin-top: 28px;" @click="resetForm('ruleForm')">取消</el-button>
        </el-form-item>
    </el-form>
</div>
<%@include file="/html/common/footer.jsp" %>
<div class="tipsbox" style="display:none;">
    <div class="tb_bg"></div>
    <div class="tb_main">
        <a href="javascript:;" class="close"><img src="${imageUrl}/hzzj/close.png" onclick="close_tipsbox()"></a>
        <strong><img src="${imageUrl}/hzzj/success.jpg"/><span>提交成功!</span></strong>
        <p>系统将对您的资料进行审核，将在一个工作日内给您电话答复，请您耐心的等待，谢谢合作！</p>
        <a href="javascript:;" class="base_abtn" onclick="close_tipsbox()">确 定</a>
    </div>
</div>
<script src="../js/vue.min.js"></script>
<script src="../js/elementui/elementui.js"></script>
<script src="../js/provinceCityArea.js"></script>
<script>
    var v = <%=request.getParameter("v") %>;
    switch(v){
        case 1:
            $('#boy_title').prepend("城市代理商");
            break;
        case 2:
            $('#boy_title').prepend("县区级代理商");
            break;
        case 3:
            $('#boy_title').prepend("城市合伙人");
            break;
        case 4:
            $('#boy_title').prepend("城市服务商");
            break;
    }
    var flag = true;
    var open_tipsbox = function(){$(".tipsbox").show();}
    var close_tipsbox = function(){$(".tipsbox").hide();document.location.reload();}
    //表单校验
    //姓名验证
 $(function () {
    $("#name > div > div.el-input > input").blur(function(){
        console.log(1)
         $("#name").siblings().remove();
        if ( $("#name").val().search(/^[\u0391-\uFFE5\w]+$/) !=-1){
            //对的
            //服务器校验
            $.ajax({
                url:"/agent/html/checkName.do",
                type:'post',
                data:{name: $("#name").val()},
                success:function(data){
                    if(data.success){
                        flag = true;
                    }else{
                         $("#name").after("<font color='red'>"+data.msg+"</font>");
                        flag = false;
                    }
                }
            });
        }else{
            //不对
             $("#name").after("<font color='red'>格式错误</font>");
            flag = false;
        }
    });

 })


    //验证电话号码
    $("input[prop='phone']").blur(function(){
        $("input[prop='phone']").siblings().remove();
        var p = $("input[prop='phone']").val();
        if(p && /^1[3|4|5|8]\d{9}$/.test(p)){
            //对的
            //服务器校验
            $.ajax({
                url:"/agent/html/checkPhone.do",
                type:'post',
                data:{phone:$("input[prop='phone']").val()},
                success:function(data){
                    if(data.success){
                        flag = true;
                    }else{
                        $("input[prop='phone']").after("<font color='red'>"+data.msg+"</font>");
                        flag = false;
                    }
                }
            });
        } else{
            //不对
            $("input[prop='phone']").after("<font color='red'>格式错误</font>");
            flag = false;
        }
    });


    new Vue({
    el: '#bRegister',
    data:function() {
      return {
        ruleForm: {
          name: '',
          phone: '',
          qq: '',
          cname: '',
          provincesName1: '',
          cityName1: '',
          citys1: [],
          areaName1:'',
          areas1: [],
          address:'',
          provincesName2: '',
          cityName2: '',
          citys2: [],
          areaName2:'',
          areas2: [],
        },
        rules: {
          name: [
            {required: true, message: '请填写姓名', trigger: 'blur'}
          ],
          phone: [
            {required: true, message: '请填写手机号', trigger: 'blur'},
            {min: 11, max: 11, message: '请填写手机号', trigger: 'blur'}
          ],
          qq: [
            {required: true, message: '请填写QQ', trigger: 'blur'},
            {min: 3, max:13, message: '请填写QQ', trigger: 'blur'}
          ],
          cname: [
            {required: true, message: '请填写公司名称', trigger: 'blur'},
          ],
          address: [
            {required: true, message: '请填写详细地址', trigger: 'blur'},
            {max: 50, message: '请填写详细地址', trigger: 'blur'}
          ],
        },
        provinces:[]
      }
    },
    mounted:function(){
      console.log(999)
      var provinces = []
      province_enum.forEach(function(item){
        provinces.push({
          id:item.id,
          name:item.name,
          city:item.city
        })
      })
      console.log(provinces)
      this.provinces = provinces
    },
    watch:{
      'ruleForm.provincesName1':function(){
        var namez = this.ruleForm.provincesName1
        var provinces = this.provinces
        var mm = []
        this.ruleForm.citys1 = []
        this.ruleForm.cityName1 = '请选择城市'
        this.ruleForm.areaName1 = '请选择区域'
        provinces.forEach(function(item){
          if(item.name == namez){
            console.log(item.city)
            mm = item.city
          }
        })
        this.ruleForm.citys1 = mm
      },
      'ruleForm.cityName1':function(){
        var namez = this.ruleForm.cityName1
        var citys1 = this.ruleForm.citys1
        var mm = []
        this.ruleForm.areas1 = []
        this.ruleForm.areaName1 = '请选择区域'
        citys1.forEach(function(item){
          if(item.name == namez){
            console.log(item.city)
            mm = item.district
          }
        })
        if(mm == 'undefined' || mm.length == 0){
          this.ruleForm.areaName1 = ''
        }else{
          this.ruleForm.areas1 = mm
        }
      },
      'ruleForm.provincesName2':function(){
        var namez = this.ruleForm.provincesName2
        var provinces = this.provinces
        var mm = []
        this.ruleForm.citys2 = []
        this.ruleForm.cityName2 = '请选择城市'
        this.ruleForm.areaName2 = '请选择区域'
        provinces.forEach(function(item){
          if(item.name == namez){
            console.log(item.city)
            mm = item.city
          }
        })
        this.ruleForm.citys2 = mm
      },
      'ruleForm.cityName2':function(){
        var namez = this.ruleForm.cityName2
        var citys1 = this.ruleForm.citys2
        var mm = []
        this.ruleForm.areas2 = []
        this.ruleForm.areaName2 = '请选择区域'
        citys1.forEach(function(item){
          if(item.name == namez){
            console.log(item.city)
            mm = item.district
          }
        })
        if(mm == 'undefined' || mm.length == 0){
          this.ruleForm.areaName2 = ''
        }else{
          this.ruleForm.areas2 = mm
        }
      }
    },
    methods: {
      submitForm: function (formName) {
        var slef =this;
        this.$refs[formName].validate(function (valid) {
          if (valid) {
            console.log(slef.ruleForm)
//            var data = {
//              name:slef.ruleForm.name,
//              phone:slef.ruleForm.phone,
//              qq:slef.ruleForm.qq,
//              company:slef.ruleForm.company,
//            }
              var data = {
                  name:slef.ruleForm.name,
                  phone:slef.ruleForm.phone,
                  qq:slef.ruleForm.qq,
                  company:slef.ruleForm.cname,
                  add_province:slef.ruleForm.provincesName1,
                  add_city:slef.ruleForm.cityName1,
                  add_area:slef.ruleForm.areaName1+slef.ruleForm.address,
                  coo_province:slef.ruleForm.provincesName2,
                  coo_city:slef.ruleForm.cityName2,
                  coo_area:slef.ruleForm.areaName2,
                  agent_type:v,
                  intro:"代理"
              }
              if(flag){
                  $.ajax({
                      url:"${pageContext.request.contextPath}/agent/html/edit.do",
                      data:data,
                      type:"post",
                      success:function(data){
                          if(data.success){
                              /* layer.alert("申请成功！,请等待工作人员审核",function(){
                               location.href = "/html/co_convened.jsp";
                               }); */
                              open_tipsbox();
                          }else{
                              layer.alert(data.msg);
                          }
                      }
                  });
              }else{
                  layer.alert("请填写正确信息");
              }
            console.log(data)
          } else {
            console.log('error submit!!')
            return false
          }
        })
      },
      resetForm: function (formName) {
        this.$refs[formName].resetFields()
      }
    }
  })
</script>
</body>
</html>