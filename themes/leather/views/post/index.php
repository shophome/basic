 <script type="text/javascript">
                   window.onload=function(){
                       var oTxt=document.getElementById('textarea-comment');
                       var oBtn=document.getElementById('submit-comments');
                       var oUl=document.getElementById('comments-list');
                       var oAu=document.getElementById('author-comment');
                    oBtn.onclick=function(){
                       var oLi=document.createElement('li');
                        oLi.innerHTML=oAu.innerHTML+'<br/>'+'<p>'+oTxt.value+'</p>';
                        oUl.appendChild(oLi);
                        
                    }

                   }
                 </script>
<?php
$this->pageTitle = Yii::app()->name;
$this->breadcrumbs = array(
    '新闻列表' => array('/post/index'),
);
?>
<?php if(!empty($_GET['tag'])): ?>
<h1>Posts Tagged with <i><?php echo CHtml::encode($_GET['tag']); ?></i></h1>
<?php endif; ?>


<div class="box">
    <div class="box-title" style="text-align: left">新闻列表</div>
    <div class="box-content"  >
       <!-- <?php $this->widget('zii.widgets.CListView', array(
                    'dataProvider'=>$dataProvider,
                    'itemView'=>'_view',
                    'template'=>"{items}\n{pager}",
                )); ?>
                -->


             <div class="panel-group" id="accordion" style="font-size:14px;">
               <div class="panel panel-default">
                 <div class="panel-heading">
                   <h3 class="panel-title">
                     <a class="collapsed" href="#collapseOne" data-toggle="collapse" data-parent="#accordion">
                       公司“出轨”了怎么办？
                     </a>
                   </h3>
                 </div>
                 <div class="panel-collapse collapse" id="collapseOne" style="height: 0px;">
                   <div class="panel-body">
                      <p>&nbsp;&nbsp;&nbsp;&nbsp;
                            <small> 发表于6小时前 &nbsp;&nbsp; |&nbsp;&nbsp; 2395次阅读  &nbsp;&nbsp;  | &nbsp;&nbsp;   来源CSDN  &nbsp;&nbsp; |&nbsp;&nbsp;    8 条评论 &nbsp;&nbsp;  | &nbsp;&nbsp;  作者刘璐璐 </small>
                            </p>
                      <p style="background:#f7f7f7;">&nbsp;&nbsp;&nbsp;&nbsp;
                      <b>摘要：</b>随着公司不断地壮大，作为公司的领导者，会不会有员工向你抱怨他们每天忙忙碌碌，却不知道自己整天在忙些什么？这说明你的公司“出轨”啦！为此，ClearCompany的CEO Andre Lavoie给出如何让公司走上正轨的一些建议。</p>
                       <p style="text-align:center;margin:10px;">
                      <img border="0" style="width: 399.16883116883116px; height: 204px;"src="http://cms.csdnimg.cn/article/201403/10/531d70000bbf2.jpg">
                       </p>
                      <p>
                      随着公司不断地壮大，作为公司的领导者，会不会有员工向你抱怨他们每天忙忙碌碌，却不知道自己整天在忙些什么？不知道自己工作的意义何在？在职场上迷失了方向？这些种种迹象表明你的公司“出轨”啦！为了让你的公司走上正轨，职场专家Andre Lavoie来支招。</p>

                     <p>  Andre Lavoie是实时人才定位平台ClearCompany的CEO ，他擅长鼓励员工进行自我定位，还会专门聆听员工谈论工作经验及对公司发展有利的一些建议。现在，就让我们看一下Andre Lavoie对“如何让公司走上正轨”有哪些可行性建议。</p>

                      <p>人才定位是首要任务，公司的成功取决于人才定位，这需要每个管理者必须了解符合公司发展策略的主要业务结构有哪些。简单地说，公司应该充分发挥自身的资源优势来进行人才定位并聚拢人心。</p>

                      <p>最近的一项名为“今天的领导如何成长”的调查显示，尽管有43%的员工知道公司发展目标，但是他们并不能准确地说出具体的目标是什么。让我们想一下，43%的员工说不出公司的具体发展目标，就好比他们没有目的地行走，难怪很多人在职场上会迷失方向。</p>

                      <p>让公司回到正轨不是不可能，但是你首先得把公司的体制看清楚。具体有如下方法：</p>

                     <p> <b> 结束“传话”游戏</b></p>

                      <p>你玩过这个游戏吗？信息在人与人之间传播，有时会发生戏剧性的变化。它可能是派对上令人兴奋的游戏，但是它发生在公司里就不那么好玩了。然而，现实中有太多的公司跟员工之间缺乏有效的沟通，导致他们的员工失去努力工作的意义。这样一来，公司会付出高昂的代价，据统计，成本高达约370亿美元每年。</p>

                      <p> 所以关键是要让公司发展战略可视化，让管理者和每位员工都能了解公司发展的总体目标并每天为之努力，同时让管理层这个“传话者”对自己有个清晰的定位，这样可以确保员工每次都能得到正确的信息。</p>

                      <p><b>让公司发展目标成为员工日常生活的一部分</b></p>

                     <p> 在大中型公司，高层管理人员通常要历经N道程序才能把上级的命令传达给每位员工，在这中间很容易出现差错，也许员工一时明白自己的工作对公司发展有什么样的影响，但是太容易被日常堆积的琐碎工作埋没掉。</p>

                      <p>我们关注的重点不应该只是对公司发展目标有益的某个特定项目，员工也通常只关心工作的最后期限，所以你不需要在每周或每季度都安排一场会议来让员工熟悉公司制度，并不断地重申公司发展目标，最重要的是让公司发展目标成为员工日常生活的一部分，确保员工不会被琐事缠住、降低工作效率，这样就不会让公司错过更大的发展机遇。</p>

                     <p> <b> 聚拢人心</b></p>
                      <p>让公司回到正轨意味着让大家坐同一条船，一般来说，公司的部门和分支机构之间通常缺乏共同的领导重心。作为一个领导者，你可能会认为公司的每个人都在朝着同一个方向努力，但事实却不是这样。实行生产透明化能让得到奖励的员工实至名归，这样，办公室政治斗争就会大大减少，员工们自然会努力工作。</p>

                      <p>盖洛普咨询公司的一项研究发现，优秀员工的反馈意见可以使生产率增长12.5%。所以了解你的员工最好的工作状态是什么样并鼓励管理者发挥优势，这意味着员工会更快乐、更有效率地工作。</p>

                     <p> 以上就是Andre Lavoie给出的一些建议，有“出轨”倾向的公司领导者赶紧行动起来吧！</p>

                    <p> <small class="pull-right">-----文章来源：The Next Web                                                                      （文/李京京 责编/陈馨影） </small></p>


                      </p>
                   </div>

                 <hr/>

                 <div id="news-comments">
                         <div style="margin:10px 30px;width:80%;">
                         <div style="font-weight:bold;color:red;" id="author-comment"><b style="color:red">demo:</b></div>
                         <div>
                         <textarea id="textarea-comment" class="form-control" placeholder="有什么感想，你也来说说吧!"style=" width: 559px; height: 84px;"></textarea>
                         </div>
                           <p class="pull-left"><span style="color:red">您还没有登录!</span> 请<a href="/basic/user/login"> 登录</a> 或 <a href="/basic/user/registration">注册</a></p>
                           <button type="button" class="btn btn-danger pull-right" id="submit-comments">发表</button>
                         </div>
                  </hr></br>

                   <div >
                      <ul style="list-style:none;"id="comments-list" >
                          </br>
                        <li><span style="font-weight:bold;">下面是最新评论</span></li>
                        <li>这些措施不错，大有收获！</li>
                        <li今天天气不错</li>
                      </ul>
                  </div>
               </div>
               </div>
              </div>


              

    </div>
</div>