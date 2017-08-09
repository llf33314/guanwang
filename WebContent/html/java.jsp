<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉JAVA技术</title>

<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":405});
})
</script>
</head>

<body>
<div class="wrap">
     <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containter javapage">
         <div class="wrap1200">
             <div class="aboutjava">
                  <div class="desc">
                      <p><em class="icon"></em><span>多粉（Duofriend）</span>作为全国领先使用JAVA进行开发的微信第三方服务平台，搭建与微信、淘宝同级别的高性能
                          高稳定的服务器系统，相较于使用PHP作为技术支持的其它第三方微信平台，更安全、更好的兼容性、更便捷的操作性、
                          更无限的扩展性，加上与微信平台无缝对接的优势，让您的微信营销更加安全放心。
                      </p>
                  </div>
                  <div class="option">
                      <dl>
                          <dt><em class="icon sys_cion"></em><h2>安全稳定</h2></dt>
                          <dd><p>采用JAVA更为精密的安全防护手段，构建更安全的服务平台，高防护、极稳定、超安全让您帐号无风险，营销更放心。</p></dd>
                      </dl>
                      <dl>
                          <dt><em class="icon sys_cion"></em><h2>性能卓越</h2></dt>
                          <dd><p>提供的每项产品都经过千锤百炼，以高性能服务器、庞大的数据库为基础，辅以专业研发团队多年的JAVA技术积累，秒速接入服务器
                          ，更大的兼容空间，让产品体验更加一流</p></dd>
                      </dl>
                      <dl>
                          <dt><em class="icon sys_cion"></em><h2>简单易用</h2></dt>
                          <dd><p>“大道极简，化繁为简”，我们致力于将复杂的技术问题简单化，把让人焦头烂额的琐碎操作化为一键点击操作，按需设置、灵活多变，
                          迅速完成操作</p></dd>
                      </dl>
                      <dl>
                          <dt><em class="icon sys_cion"></em><h2>满足多样化需求</h2></dt>
                          <dd><p>通过JAVA开发，可针对行业场景定制多种专属产品和工具，满足各类场景需求，帮助企业从容面对业务高峰、安全压力，
                          助力企业快速发展。</p></dd>
                      </dl>
                  </div>
             </div>
             <div class="pk">
                  <h2>为什么选择多粉？</h2>
                  <div class="clearfix pkmain pr">
                       <div class="pa sys_cion pkicon"></div>
                       <div class="fl itembox">
                            <div class="t">多粉JAVA技术</div>
                            <div class="m">
                                <dl>
                                    <dt>安全性</dt>
                                    <dd>高，提供全方位保护</dd>
                                </dl>
                                <dl>
                                    <dt>可扩展性</dt>
                                    <dd>优，新的功能易地加入到系统中，随时按需进行定制升级</dd>
                                </dl>
                                <dl>
                                    <dt>并发性</dt>
                                    <dd>高，可同时容纳大批量的访问量</dd>
                                </dl>
                                <dl>
                                    <dt>兼容性</dt>
                                    <dd>优，完美适应IOS、安卓等不同系统手机</dd>
                                </dl>
                                <dl>
                                    <dt>交互性</dt>
                                    <dd>强，手机端能实现多种交互方式</dd>
                                </dl>
                                <dl>
                                    <dt>稳定性</dt>
                                    <dd>高，多层架构搭建高稳定应用</dd>
                                </dl>
                            </div>
                       </div>
                       <div class="fr itembox itembox_99cccc">
                            <div class="t">其它微信第三方PHP技术</div>
                            <div class="m">
                                <dl>
                                    <dt>安全性</dt>
                                    <dd>低，风险大，易遭受攻击</dd>
                                </dl>
                                <dl>
                                    <dt>可扩展性</dt>
                                    <dd>差，程序很僵硬，改一点而动全身，局限性大</dd>
                                </dl>
                                <dl>
                                    <dt>并发性</dt>
                                    <dd>低，访问量过多时易导致系统崩溃</dd>
                                </dl>
                                <dl>
                                    <dt>兼容性</dt>
                                    <dd>中，不同手机系统易导致界面差异化</dd>
                                </dl>
                                <dl>
                                    <dt>交互性</dt>
                                    <dd>中，交互方式相对单一</dd>
                                </dl>
                                <dl>
                                    <dt>稳定性</dt>
                                    <dd>低，只能实现简单的分布式两层或三层的架构</dd>
                                </dl>
                            </div>
                       </div>
                  </div>
             </div>
         </div>
     </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>







