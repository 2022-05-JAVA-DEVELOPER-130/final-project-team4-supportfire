(window.webpackJsonp=window.webpackJsonp||[]).push([[78],{1778:function(t,e,n){},2243:function(t,e,n){"use strict";n(1778)},2569:function(t,e,n){"use strict";n.r(e);var o=n(4),l=n(930),r=n(857),c=n(464),d=n(56),h=n(173),_=n(41),f=o.default.extend({components:{BannerBottom:r.a,MainFooter:l.a},layout:"search",middleware:c.validateUserNull,data:function(){return{step:1,phone:"",markedEmail:""}},computed:{validPhoneNumber:function(){return Object(d.f)(this.phone)}},methods:{findEmail:function(){var t=this;h.$login.findEmail(this.phone).then((function(data){t.$lodash.isEmpty(data.email)?(t.$toast({content:"일치하는 사용자 정보를 찾을 수 없습니다.",type:_.ToastType.error}),t.phone=""):(t.markedEmail=data.email,t.step=2)}))},enterInputPhone:function(){this.validPhoneNumber&&this.findEmail()}}}),m=(n(2243),n(64)),component=Object(m.a)(f,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"container help"},[n("div",{class:["content",t.$mq]},[n("div",{staticClass:"help_area"},[1==t.step?n("div",[n("h2",{staticClass:"help_title"},[t._v("이메일 아이디 찾기")]),t._m(0),n("InputBox",{attrs:{"input-type":"text",placeholder:"가입하신 휴대폰 번호","number-only":!0},on:{enter:t.enterInputPhone},model:{value:t.phone,callback:function(e){t.phone=e},expression:"phone"}},[n("h3",{staticClass:"input_title",attrs:{slot:"title"},slot:"title"},[t._v("휴대폰 번호")])]),n("div",{staticClass:"help_btn_box"},[n("BaseButton",{attrs:{tag:"a",href:"#","style-type":"full solid",disabled:!t.validPhoneNumber},on:{onClick:t.findEmail}},[t._v(" 이메일 아이디 찾기 ")])],1)],1):t._e(),2==t.step?n("div",[t._m(1),n("div",{staticClass:"success_notice"},[n("dl",[n("dt",{staticClass:"notice_title"},[t._v("이메일 주소")]),n("dd",{staticClass:"notice_txt"},[t._v(" "+t._s(t.markedEmail)+" ")])])]),n("div",{staticClass:"success_btn_box"},[n("BaseButton",{attrs:{tag:"nuxt-link",to:"/login/find_password","style-type":"outline",size:"large"}},[t._v(" 비밀번호 찾기 ")]),n("BaseButton",{attrs:{tag:"nuxt-link",to:"/login","style-type":"solid",size:"large"}},[t._v(" 로그인 ")])],1)]):t._e()])]),n("BannerBottom"),n("mq-layout",{attrs:{mq:["mo","sm"]}},[n("MainFooter")],1)],1)}),[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"help_notice"},[n("p",{staticClass:"notice_txt"},[t._v(" 가입 시 등록한 휴대폰 번호를 입력하면"),n("br"),t._v(" 이메일 주소의 일부를 알려드립니다. ")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("h2",{staticClass:"help_title success"},[n("span",[t._v("이메일 주소 찾기에")]),t._v(" "),n("span",[t._v("성공하였습니다.")])])}],!1,null,null,null);e.default=component.exports;installComponents(component,{InputBox:n(817).default,BaseButton:n(461).default})},822:function(t,e,n){},853:function(t,e,n){"use strict";n(822)},857:function(t,e,n){"use strict";n(26),n(51);var o=n(814),l=n(296),r={components:{LayerAppdown:o.a},data:function(){return{banners:[{subTitle:"service guide",Title:"KREAM은 처음이지? \n서비스 소개를 확인해보세요.",infoText:"서비스 안내",path:"/about",target:"_blank"},{subTitle:"download the app",Title:"KREAM 앱을 설치하여 \n한정판 스니커즈를 FLEX 하세요!",infoText:"앱 설치하기",path:"/download"}],showLayerAppdown:!1}},methods:{changeHtml:function(text){return text.replace(/(?:\r\n|\r|\n)/g,"<br />")},onClickBanner:function(path,t){if("/download"!==path)if(this.$lodash.isEmpty(t)||"_blank"!==t)this.$router.push(path);else{var e=this.$router.resolve({path:path});window.open(e.href,"_blank")}else this.$isMobile(this.$mq)?window.open(l.b.HOME,"_blank"):this.showLayerAppdown=!this.showLayerAppdown}}},c=(n(853),n(64)),component=Object(c.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{class:["banner_bottom",t.$mq]},[t._l(t.banners,(function(e,o){return n("a",{key:o,staticClass:"banner_box",attrs:{href:"#"},on:{click:function(n){return n.preventDefault(),t.onClickBanner(e.path,e.target)}}},[n("div",{staticClass:"banner_info"},[n("strong",{staticClass:"info_subtitle"},[t._v(t._s(e.subTitle))]),n("p",{staticClass:"info_title",domProps:{innerHTML:t._s(t.changeHtml(e.Title))}}),n("span",{staticClass:"info_txt"},[t._v(t._s(e.infoText))])])])})),t.showLayerAppdown?n("LayerAppdown",{attrs:{type:"install","layer-open-appdown":t.showLayerAppdown},on:{closeLayerAppdown:function(e){t.showLayerAppdown=!1}}}):t._e()],2)}),[],!1,null,"11ddc032",null);e.a=component.exports}}]);