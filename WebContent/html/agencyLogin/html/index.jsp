<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>代理登录</title>
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/js/elementui/elementui.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>
<div class="a-box">
    <div class="b-register-box" id="bRegister">

        <h1 class="title">代理登录</h1>
        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="0" class="demo-ruleForm">
            <el-form-item label="" prop="name" style="width: 400px;">
                <el-input placeholder="帐号" v-model="ruleForm.name"></el-input>
            </el-form-item>
            <el-form-item label="" prop="password" style="width: 400px;" class="b-password">
                <el-input placeholder="密码" v-model="ruleForm.password"></el-input>
                <img class="b-password-icon" src="../images/password.png">
            </el-form-item>
            <div style="position: relative">
                <el-form-item label="" prop="imgNumber" style="width: 280px;">
                    <el-input placeholder="请输入图形验证码" v-model="ruleForm.imgNumber"></el-input>
                </el-form-item>
                <img class="b-yzm-img" :src="yzmSrc">
                <div class="b-change-yzm" @click="getYzmImg">换一张</div>
            </div>
            <div style="position: relative">
                <el-form-item label="" prop="inputNumber" style="width: 280px;">
                    <el-input placeholder="请输入验证码" v-model="ruleForm.inputNumber"></el-input>
                </el-form-item>
                <div class="b-get-yzm" @click="getInputYzm('ruleForm')" id="getInputYzm">获取验证码</div>
            </div>
        </el-form>
        <button class="b-submit" id="sSubmit" @click="submitForm('ruleForm')">登录</button>
    </div>
</div>
<%@include file="/html/common/footer.jsp" %>
<script src="/html/common/publicResource/js/vue.min.js"></script>
<script src="/html/common/publicResource/js/elementui/elementui.js"></script>
<script>
  new Vue({
    el: '#bRegister',
    data: function () {
      return {
        yzmSrc: '/login/html/buildCode?d' + Math.random(),
        submitFlag: false,
        timeFlag:null,
        time:10,
        cleanInterval:null,
        ruleForm: {
          name: '',
          password: '',
          imgNumber: '',
          inputNumber: ''
        },
        rules: {
          name: [
            {required: true, message: '请输入正确的登录账号', trigger: 'blur'}
          ],
          password: [
            {required: true, message: '密码不能为空', trigger: 'blur'}
          ],
          imgNumber: [
            {required: true, message: '请输入正确的图形验证码', trigger: 'blur'}
          ],
          inputNumber: [
            {required: true, message: '请输入正确的验证码', trigger: 'blur'}
          ],
        }
      }
    },
    mounted: function () {
      document.querySelectorAll('#bRegister')[0].style.opacity = 1
    },
    methods: {
      // 替换图形验证码
      getYzmImg: function () {
        this.yzmSrc = '/login/html/buildCode?d=' + Math.random()
      },
      // 获取数字验证码
      getInputYzm: function (formName) {
        var self = this
        this.$refs[formName].validateField('name', function (valid) {
          var bean = {
            'name': self.ruleForm.name,//账号
          }
          if (bean.name == '') return
          $.ajax({
            url: '/login/html/getTextCode.do',
            type: 'post',
            dataType: 'json',
            data: $.param(bean),
            success: function (data) {
              if (data.status == 'success') {
                self.getInput60s();
              } else {
                console.log(55)

              }
            }
          })
        })
      },
      // 60秒倒计时
      getInput60s:function(){
        var self = this;
        if(self.timeFlag) return;
        self.timeFlag = true
        self.cleanInterval = setInterval(function(){
          self.time-=1;
          console.log(self.time)
          if(self.time >= 0){
            document.querySelectorAll('#getInputYzm')[0].style.backgroundColor = '#999'
            document.querySelectorAll('#getInputYzm')[0].innerHTML = self.time+'s后重新获取'
          }else{
            self.time = 10
            self.timeFlag = false
            clearInterval(self.cleanInterval)
            document.querySelectorAll('#getInputYzm')[0].style.backgroundColor = '#2d8dfd'
            document.querySelectorAll('#getInputYzm')[0].innerHTML = '获取验证码'
          }
        },1000)
      },
      // 登录
      submitForm: function (formName) {
        var slef = this
        console.log(this.$refs[formName])
        this.$refs[formName].validate(function (valid) {
          if (valid) {
            var data = {
              name: slef.ruleForm.name,
                pwd: slef.ruleForm.password,
                val: slef.ruleForm.yzmimg,
                sms: slef.ruleForm.yzmnumber,
            }

          } else {
            return false
          }
        })
      },
      //登录错误处理
      submitErrorState: function (msg) {
        this.$message.error(msg)
        this.submitFlag = false
        document.querySelectorAll('#sSubmit')[0].style.backgroundColor = '#2d8dfd'
        document.querySelectorAll('#sSubmit')[0].innerHTML = '登录'
      },
      //验证成功登录
      submitSuccessState: function () {
        var slef = this
        if (self.submitFlag) return
        self.submitFlag = true
        document.querySelectorAll('#sSubmit')[0].style.backgroundColor = '#999'
        document.querySelectorAll('#sSubmit')[0].innerHTML = '登录中....'

      }
    }
  })
</script>
</body>
</html>