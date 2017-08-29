<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>员工查询</title>
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/js/elementui/elementui.css" />
    <link rel="stylesheet" href="/html/common/publicResource/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../css/iconfont/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
    <script src="/html/common/publicResource/js/vue.min.js"></script>
    <script src="/html/common/publicResource/js/elementui/elementui.js"></script>
    <script src="/js/layer/layer.js"></script>
    <style>
        .el-form-item__error {
            color: #fe4040;
            font-size: 12px;
            line-height: 1;
            padding-top: 4px;
            position: absolute;
            left: 430px;
            min-width: 106px;
            top: 0;
            border: 0;
            height: 32px;
            line-height: 27px;
            padding-left: 41px;
            background-image: url("../images/berror-tips.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>

<div style="position: relative;">
    <div class="a-top-banner"></div>
    <h2 class="a-top-banner-h2">诚信、专业、极致、服务至上</h2>
</div>
<div class="a-content"  id="staffInquiriesAnEvaluation">
    <div class="a-box">
        <!-- 员工查询 -->
        <section class="a-staff-inquiries">
            <h1 class="a-title">员工查询</h1>
            <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="" class="demo-ruleForm">
                <el-form-item>
                    <el-select v-model="ruleForm.typeValue" style="width: 400px;">
                        <el-option
                                v-for="item in ruleForm.options"
                                :key="item.value"
                                :label="item.label"
                                :value="item.value">
                        </el-option>
                    </el-select>
                </el-form-item>
                <el-form-item style="width: 400px;" prop="inputNumber" :error="errors.inputNumber">
                    <el-input :placeholder="ruleForm.typeValue== 1 ?'工号':'姓名'" v-model="ruleForm.inputNumber"></el-input>
                </el-form-item>
                <div style="position: relative;">
                    <el-form-item style="width: 270px;float: left" prop="imgNumber" :error="errors.imgNumber">
                        <el-input placeholder="请输入图形验证码" v-model="ruleForm.imgNumber"></el-input>
                    </el-form-item>
                    <img src="../images/buildCode.png" class="a-build-code" id="valCodeImg"/>
                    <span class="a-get-other-img" onclick="updateImage();">换一张</span>
                </div>
                <div>
                    <button type="button" class="a-submit" @click="submit('ruleForm')">查询</button>
                </div>
            </el-form>
        </section>
    </div>

</div>
<%@include file="/html/common/footer.jsp" %>

<script>
    function updateImage() {
        $("#valCodeImg").attr("src","/login/html/buildCode?m="+Math.random());
    }
    
    
    new Vue({
      el:'#staffInquiriesAnEvaluation',
      data:function(){
        return {
          ruleForm:{
            imgNumber:'',
            inputNumber:'',
            options:[
              {
                label:'工号',
                value:1
              },
              {
                label:'姓名',
                value:2
              }
            ],
            typeValue:1
          },
          rules:{
            inputNumber:[
              {required: true, message: '请填写工号/姓名', trigger: 'blur'}
              ],
            imgNumber:[
              {required: true, message: '请输入图形验证码', trigger: 'blur'}
            ]
          },
          errors:{
            imgNumber:''
          },
          starNumber:5
        }
      },
      mounted:function(){
        document.querySelectorAll('#staffInquiriesAnEvaluation')[0].style.display = 'block'
        document.addEventListener('keyup',this.keyUpSubmit)
          updateImage()
      },
      methods:{
        /*
        * 回车查询
        */
        keyUpSubmit:function(event){
          if(event.keyCode == 13) this.submit('ruleForm')
        },
        /*
        * 点击查询
        * */
        submit:function(formName){
          var self = this;
          this.$refs[formName].validate(function (valid) {
            if (valid) {
                $.ajax({
                    type:"post",
                    url:"/employee/html/employeeQuery",
                    data:{select:self.ruleForm.typeValue,cx:self.ruleForm.inputNumber,valcode:self.ruleForm.imgNumber},
                    async:false,
                    dataType:"json",
                    success:function(data){
                        var error=data.error;
                        if(error==1||error=="1"){
                                layer.alert("提示："+data.message);
                                updateImage();
                        }
                        else{//查询的到
                            window.location.href='/html/staff/html/checkMsg.jsp'

                        }
                    }
                });
//              window.location.href='checkMsg.html'
            } else {
              return false
            }
          })
        },
      }
    })
</script>
<script>
    $(".rightIcon").on("click",".ri1",function(){
        $("html,body").animate({"scrollTop":0},500);
    })

    /*页面右侧信息*/
    //超过一定高度时， 显示返回顶部按钮
    $(window).scroll(function() {
        var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop;
        if (scrollTop > 200) {
            $('.ri1').show();
        }
        else {
            $('.ri1').hide();
        }
    });
</script>
</body>
</html>