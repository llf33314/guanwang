<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>员工评价</title>
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/js/elementui/elementui.css" />
    <link rel="stylesheet" href="/html/common/publicResource/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../css/iconfont/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
    <script src="/html/common/publicResource/js/vue.min.js"></script>
    <script src="/html/common/publicResource/js/elementui/elementui.js"></script>
    <style>
        .el-form-item {
            margin-bottom: 22px;
            margin-left: -20px;
        }
        [v-cloak]{
            display: none;
        }
        .el-message-box__header {
            display: none;
        }
    </style>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>
    <div class="a-evaluation-box" id="aEValuationContent" style="display: none">
        <h1 class="title">客户评价表</h1>
        <div class="a-evaluation-content">
            <div class="title-box">
                 <h1>致尊敬的客户：</h1>
                 <p>首先衷心的感谢您对多粉的信任和支持。为不断的提高我公司的产品和服务质量，完善我们的工作，给您提供更优质的产品及服务。在致以我们诚挚的问候的同时，请您在百忙之中抽空填写员工评价表。我们热切的盼望着对您在我们的工作提出宝贵意见和建议，您的每一个意见和建议，将是我们不断前进的动力。非常感谢您的配合，我们将不胜感激!</p>
            </div>
            <div class="a-staff-msg" v-cloak>
                <h1 class="a-title">员工资料：</h1>
                <div class="a-msg-box">
                    <div class="left" :style="{backgroundImage: 'url(' + staffMsg.head + ')'}"></div>
                    <div class="right">
                        <ul>
                            <li>姓名：{{staffMsg.name}}</li>
                            <li>性别：{{staffMsg.sex}}</li>
                            <li>工号：{{staffMsg.jobNumber}}</li>
                        </ul>
                        <ul>
                            <li>所属渠道：{{staffMsg.channel}}</li>
                            <li>所属地区：{{staffMsg.region}}</li>
                            <li>身份证：{{staffMsg.cardId}}</li>
                        </ul>
                        <ul>
                            <li><span style="float: left">星级：</span><el-rate style="margin: 6px 0 0 10px;"  disabled v-model="staffMsg.starNumber"></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="a-staff-edit" style="overflow: hidden;">
                <h1 class="a-title">员工服务工作评定：</h1>
                <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
                    <ul class="edit">
                        <li><span style="float: left">仪容仪表：</span>
                            <el-rate style="margin-left: 10px;"  v-model="starNumber1">
                        </li>
                        <li>
                            <span class="a-v-title">评价：</span>
                            <el-form-item prop="desc1">
                                <el-input type="textarea" placeholder="字数不能超过100" v-model="ruleForm.desc1"></el-input>
                            </el-form-item>
                        </li>
                    </ul>
                    <ul class="edit">
                        <li><span style="float: left">表达能力：</span>
                            <el-rate style="margin-left: 10px;"  v-model="starNumber2">
                        </li>
                        <li>
                            <span class="a-v-title">评价：</span>
                            <el-form-item prop="desc2">
                                <el-input type="textarea" placeholder="字数不能超过100" v-model="ruleForm.desc2"></el-input>
                            </el-form-item>
                        </li>
                    </ul>
                    <ul class="edit">
                        <li><span style="float: left">服务态度：</span>
                            <el-rate style="margin-left: 10px;" v-model="starNumber3">
                        </li>
                        <li>
                            <span class="a-v-title">评价：</span>
                            <el-form-item prop="desc3">
                                <el-input type="textarea" placeholder="字数不能超过100" v-model="ruleForm.desc3"></el-input>
                            </el-form-item>
                        </li>
                    </ul>
                    <ul class="edit">
                        <li><span style="float: left">专业知识：</span>
                            <el-rate style="margin-left: 10px;"  v-model="starNumber4">
                        </li>
                        <li>
                            <span class="a-v-title">评价：</span>
                            <el-form-item prop="desc4">
                                <el-input type="textarea" placeholder="字数不能超过100" v-model="ruleForm.desc4"></el-input>
                            </el-form-item>
                        </li>
                    </ul>
                    <h1 class="a-title" style="padding-top: 35px;">需求反馈及改进建议：</h1>
                    <ul class="edit">
                        <li>
                            <span class="a-v-title">反馈：</span>
                            <el-form-item prop="desc5">
                                <el-input type="textarea" placeholder="字数不能超过100" v-model="ruleForm.desc5"></el-input>
                            </el-form-item>
                        </li>
                    </ul>
                    <el-form-item style="text-align: center; margin-bottom: 71px;">
                        <el-button @click="submit('ruleForm')" style="width: 90px;margin-left: 0;margin-top: 28px;" type="primary" >保存</el-button>
                        <el-button @click="cancel()" style="width: 90px;margin-top: 28px;" >取消</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
        <div style="height: 65px;"></div>
    </div>
    <%@include file="/html/common/footer.jsp" %>

</body>
<script>
    new Vue({
      el:'#aEValuationContent',
      data:function(){
        return {
          staffMsg:{
            head:'',
            name:'',
            sex:1,
            jobNumber:'',
            channel:'',
            region:'',
            cardId:'',
            starNumber:0
          },
          starNumber1:0,
          starNumber2:0,
          starNumber3:0,
          starNumber4:0,
          ruleForm:{
            desc1:'',
            desc2:'',
            desc3:'',
            desc4:'',
            desc5:''
          },
          rules:{
            desc1:[
              {max:100, message: '字数超过', trigger: 'blur'},
            ],
            desc2:[
              {max:100, message: '字数超过', trigger: 'blur'},
            ],
            desc3:[
              {max:100, message: '字数超过', trigger: 'blur'},
            ],
            desc4:[
              {max:100, message: '字数超过', trigger: 'blur'},
            ],
            desc5:[
              {max:100, message: '字数超过', trigger: 'blur'},
            ],
          },
        }
      },
      mounted:function(){
        document.querySelectorAll('#aEValuationContent')[0].style.display = 'block'
        document.addEventListener('keyup',this.keyUpSubmit)
        this.getStaffMsg();
      },
      methods:{
        /*
        * 异步获取员工信息
        * */
        getStaffMsg:function(){
            console.log(44)
          var self = this;
          self.staffMsg = {
            head:'../images/head.jpg',
            name:'立等待',
            sex:'男',
            jobNumber:'007',
            channel:'惠州分公司',
            region:'惠州',
            cardId:'441323********3232',
            starNumber:5
          }
        },
        /*
        * 取消返回页面
        * */
        cancel:function(){
          window.location.href='checkMsg.html'
        },
        /*
        * 回车提交评价信息
        * */
        keyUpSubmit:function(event){
          if(event.keyCode == 13 ) this.submit('ruleForm')
        },
        /*
        * 判断是否评价
        * return true or false
        * */
        isHaveHundred:function(){
          var startState = this.starNumber1 == 0 && this.starNumber2 == 0 && this.starNumber3 == 0 && this.starNumber4 == 0;
          var descState = this.ruleForm.desc1 == '' && this.ruleForm.desc2 == '' && this.ruleForm.desc3 == '' && this.ruleForm.desc4 == '' && this.ruleForm.desc5 == '';
          return startState&&descState
        },
        /*
        * 提交成功提示
        * */
        submitSuccess:function(){
          var self = this
          this.$alert('感谢您对该员工的认可!', '', {
            confirmButtonText: '确定',
            callback: function(){
              window.location.href='checkMsg.html'
            }
          });
        },
        /*
        * 提交评价信息
        * */
        submit:function(formName){
          var self = this;
          if(this.isHaveHundred()){
            this.$alert('评价内容不能为空', '', {
                confirmButtonText: '确定',
                callback: function(){
                    // 确定回调
                }
              });
            return
          }
          this.$refs[formName].validate(function (valid) {
            if (valid) {
              console.log(self.ruleForm)
              console.log(self.starNumber1)
              self.submitSuccess()
            } else {
              return false
            }
          })
        },
      }
    })
</script>
</html>