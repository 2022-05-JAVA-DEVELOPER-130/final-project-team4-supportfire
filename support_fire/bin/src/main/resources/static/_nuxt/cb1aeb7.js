(window.webpackJsonp=window.webpackJsonp||[]).push([[4],{1104:function(t,e,n){},1208:function(t,e,n){"use strict";n(1104)},1465:function(t,e,n){"use strict";n(26),n(51);var o=n(41),r=n(61),c=n(7),l={props:{showLayer:{type:Boolean,default:!0},method:{type:String,default:"GET"},url:{type:String},width:{type:String},height:{type:String},isInternal:{type:Boolean,default:!1}},mounted:function(){var t,e=document.querySelector("#iframe_layer");if(this.isInternal){var n=this.$auth.getToken("local"),l={Authorization:"Bearer ".concat(n)};c.a.$request({method:this.method,url:null===(t=this.url)||void 0===t?void 0:t.replace(/http[s]?:\/\/(dev|stage)?-?(api\.kream\.co\.kr)(\:[0-9]+)?/,""),headers:l}).then((function(t){var n=e.contentWindow.document;n.open(),n.write(t),n.close()})).catch((function(){Object(r.d)({content:"죄송합니다. 창을 닫고 다시 시도해주세요.",type:o.ToastType.error})}))}else e.src=this.url},methods:{close:function(){this.$emit("close")}}},f=(n(1208),n(64)),component=Object(f.a)(l,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("BaseLayer",{staticClass:"layer_frame",attrs:{"show-layer":t.showLayer},on:{close:t.close}},[n("template",{slot:"content"},[n("iframe",{attrs:{id:"iframe_layer",width:t.width,height:t.height,frameborder:"0",allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",allowfullscreen:""}})])],2)}),[],!1,null,"1850d959",null);e.a=component.exports;installComponents(component,{BaseLayer:n(462).default})},1775:function(t,e,n){},2240:function(t,e,n){"use strict";n(1775)},818:function(t,e,n){"use strict";n(43),n(44);e.a={computed:{os:function(){return this.$ua.isFromAndroidOs()?"aos":this.$ua.isFromIos()?"ios":this.$ua.os().toLowerCase().includes("windows")?"win_os":"etc"},isNotSupportedBrowser:function(){return this.$isNotSupportedBrowser(this.$ua._parsed)},isInAppBrowser:function(){return this.$isInAppBrowser(this.$ua)}}}},821:function(t,e,n){},827:function(t,e,n){"use strict";n(21),n(11),n(42),n(26),n(51),n(98);var o=n(920),r=n(897),c=n(173),l=n(818),f={components:{AuthPolicy:o.a,CategorySelect:r.a},mixins:[l.a],props:{showLayer:{type:Boolean,default:!1},isFullSize:{type:Boolean,default:!1},category:{type:String,default:"sneakers"}},data:function(){return{selectedCategory:this.category}},computed:{categoryData:function(){var t=this;return c.$common.categoryList.map((function(e){var n=t.$lodash.camelCase(e.replace("-","_"));return{id:e,category:t.$t(t.$m[n])}})).filter((function(e){return!t.$lodash.isEmpty(e.category)}))},selectedCategoryName:function(){var t=this,e=this.categoryData.filter((function(e){return e.id===t.selectedCategory}));return this.$lodash.isEmpty(e)?"":e[0].category}},watch:{showLayer:function(t){var e;if(t){var n=null===(e=this.$refs.items)||void 0===e?void 0:e.find((function(t){return"true"===t.ariaSelected}));this.scrollTo(null==n?void 0:n.firstElementChild)}}},methods:{close:function(){this.$emit("close")},changeCategory:function(t,e){e&&this.scrollTo(e.target),this.selectedCategory=t},scrollTo:function(t){t&&this.$refs.list.scrollTo(t.offsetLeft-t.offsetWidth,0)},selected:function(t){this.changeCategory(t.id)}}},d=(n(922),n(923),n(64)),component=Object(d.a)(f,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("BaseLayer",{class:["layer_auth_policy",{full:t.isFullSize}],attrs:{"show-layer":t.showLayer},on:{close:t.close}},[n("h2",{staticClass:"title",attrs:{slot:"header"},slot:"header"},[t._v("검수기준")]),n("template",{slot:"content"},[t.$isPc(t.$mq)?n("div",{ref:"list",staticClass:"category_list auth_policy_tab"},[n("div",{staticClass:"category_list_items"},[n("VueSelect",{attrs:{value:t.selectedCategoryName,options:t.categoryData,clearable:!1,searchable:!1,label:"category",placeholder:"카테고리 선택"},on:{"option:selected":t.selected},scopedSlots:t._u([{key:"open-indicator",fn:function(e){var o=e.attributes;return[n("svg-icon",t._b({staticClass:"ico-arr-down-gray",attrs:{name:"ico-arr-down-gray"}},"svg-icon",o,!1))]}}],null,!1,3947020124)})],1)]):n("CategorySelect",{attrs:{item:t.categoryData,"change-route":!1,"active-category":t.selectedCategory},on:{change:function(e){return t.changeCategory(e)}}}),n("AuthPolicy",{attrs:{category:t.selectedCategory}})],1),n("a",{staticClass:"btn_layer_close",attrs:{slot:"btnClose",href:"#none"},on:{click:function(e){return e.preventDefault(),t.close.apply(null,arguments)}},slot:"btnClose"},[n("svg-icon",{staticClass:"ico-close",attrs:{name:"ico-close"}})],1)],2)}),[],!1,null,"f1ee2dae",null);e.a=component.exports;installComponents(component,{BaseLayer:n(462).default})},831:function(t,e,n){},832:function(t,e,n){},833:function(t,e,n){},837:function(t,e,n){},842:function(t,e,n){"use strict";n(42);var o=n(858),r=n(799),c={components:{DropdownList:o.a},props:{category:{type:String,default:null},showLayer:{type:Boolean,default:!1},isFullSize:{type:Boolean,default:!1},faqId:{type:String,default:null},title:{type:String,default:""}},data:function(){return{dropdownData:[],singleFaq:{}}},watch:{faqId:function(t){t&&this.fetchSingleFaq()},category:function(t){t&&this.fetchFaqList()}},created:function(){this.faqId?this.fetchSingleFaq():this.fetchFaqList()},methods:{close:function(){this.$emit("close")},clickSingleContent:function(t){"a"===t.target.tagName.toLowerCase()&&(window.location.href=t.target.href)},fetchSingleFaq:function(){var t=this;Object(r.m)("/api/faq/".concat(this.faqId)).then((function(e){var data=e.data;t.singleFaq=data})).catch((function(){throw new Error("error")}))},fetchFaqList:function(){var t=this,e=this.category||"all";Object(r.m)("/api/faq/",{params:{per_page:50,cursor:1,category:e}}).then((function(e){var data=e.data;t.dropdownData=data.items.map((function(t){return t.category_str="",t}))}))}}},l=(n(870),n(871),n(872),n(64)),component=Object(l.a)(c,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("BaseLayer",{class:["layer_faq",{full:t.isFullSize}],attrs:{"show-layer":t.showLayer},on:{close:t.close}},[n("h2",{staticClass:"title",attrs:{slot:"header"},slot:"header"},[t._v(" "+t._s(t.title)+" ")]),n("template",{slot:"content"},[t.$lodash.isEmpty(t.faqId)?n("DropdownList",{attrs:{item:t.dropdownData}}):n("div",{class:["customer_content","my_notice",t.$mq]},[n("div",{staticClass:"dropdown"},[n("div",{staticClass:"dropdown_content"},[n("div",{staticClass:"content",domProps:{innerHTML:t._s(t.singleFaq.content)},on:{click:t.clickSingleContent}})])])])],1),n("a",{staticClass:"btn_layer_close",attrs:{slot:"btnClose"},on:{click:t.close},slot:"btnClose"},[n("svg-icon",{staticClass:"ico-close",attrs:{name:"ico-close"}})],1)],2)}),[],!1,null,"3aa49a5b",null);e.a=component.exports;installComponents(component,{BaseLayer:n(462).default})},846:function(t,e,n){},847:function(t,e,n){},848:function(t,e,n){},852:function(t,e,n){"use strict";n(821)},858:function(t,e,n){"use strict";n(21),n(11);var o=n(10),r=[{text:"공통",value:"common"},{text:"판매",value:"selling"},{text:"구매",value:"buying"},{text:"이용정책",value:"policy"}],c={props:{item:{type:Array},filterCondition:{type:Object}},data:function(){return{open:!1}},computed:{created:function(){return!!this.item&&(this.item.date_published||this.item.date_created)}},watch:{item:function(){this.open=null}},methods:{formatDate:o.j,dropdown:function(t){this.open===t?this.open=null:this.open=t},categoryTextOf:function(t){return this.$lodash.isEmpty(t)||"all"===t?null:r.filter((function(e){return e.value===t}))[0].text}}},l=(n(852),n(64)),component=Object(l.a)(c,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("ul",{staticClass:"dropdown_list"},t._l(t.item,(function(e,o){return n("li",{key:o,class:{open:t.open===o}},[n("div",{staticClass:"dropdown"},[n("div",{staticClass:"dropdown_head",on:{"!click":function(e){return t.dropdown(o,e)}}},[e.category_str?n("strong",{staticClass:"sort"},[t._v(t._s(t.categoryTextOf(e.category_str)))]):t._e(),n("div",{staticClass:"title_box"},[t.created?n("span",{staticClass:"date"},[t._v(" "+t._s(t.formatDate(t.created,"yyyy.MM.dd"))+" ")]):t._e(),n("p",{staticClass:"title"},[t._v(t._s(e.title))])]),n("svg-icon",{class:t.open===o?"arr-lg-up":"arr-lg-down",attrs:{name:t.open===o?"arr-lg-up":"arr-lg-down"}})],1),n("div",{staticClass:"dropdown_content"},[n("div",{staticClass:"content",domProps:{innerHTML:t._s(e.content)}})])])])})),0)}),[],!1,null,"54c3973f",null);e.a=component.exports},870:function(t,e,n){"use strict";n(831)},871:function(t,e,n){"use strict";n(832)},872:function(t,e,n){"use strict";n(833)},897:function(t,e,n){"use strict";n(23),n(21),n(11),n(52),n(53),n(295),n(90);var o={props:{item:{type:Array},activeCategory:{type:String,default:null},useAll:{type:Boolean,default:!1},changeRoute:{type:Boolean,default:!0}},data:function(){return{selectedCategory:{}}},computed:{categories:function(){if(!this.useAll)return this.item;var t=[{category:"전체",id:"all"}];return t.concat(this.item),t.concat(this.item)}},watch:{activeCategory:function(t){this.selectedCategory=this.categories.filter((function(e){return e.id===t}))[0]},selectedCategory:function(t){this.clickCategory(null==t?void 0:t.id)}},created:function(){var t=this.$route.query.category||this.activeCategory;if(t){var e=this.categories.filter((function(e){return e.id===t||e.category===t}));(null==e?void 0:e.length)>0&&(this.selectedCategory=e[0])}},methods:{clickCategory:function(t){if(this.changeRoute){var e=new URLSearchParams,n=this.$router.currentRoute.query;for(var o in n)"category"!==o&&"page"!==o&&"list"!==o&&e.append(o,n[o]);t&&e.append("category",t),this.$router.push(this.$route.path+"?"+e.toString()+"&list=true")}else this.$emit("change",t)}}},r=(n(900),n(64)),component=Object(r.a)(o,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{class:["category_option"]},[n("label",{staticClass:"selected_txt"},[t._v(t._s(t.selectedCategory.category||"전체")),n("svg-icon",{staticClass:"ico-arr-down-gray",attrs:{name:"ico-arr-down-gray"}})],1),n("select",{directives:[{name:"model",rawName:"v-model",value:t.selectedCategory,expression:"selectedCategory"}],ref:"monthOption",on:{change:function(e){var n=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.selectedCategory=e.target.multiple?n:n[0]}}},t._l(t.categories,(function(option,e){return n("option",{key:e,domProps:{value:option}},[t._v(" "+t._s(option.category)+" ")])})),0)])])}),[],!1,null,"8b2e8920",null);e.a=component.exports},900:function(t,e,n){"use strict";n(837)},920:function(t,e,n){"use strict";var o=n(2),html=(n(23),n(100),n(22),n(805),n(463),n(2548)),r=n(173),c=n(799),l={props:{category:{type:String,default:"sneakers"}},data:function(){return{contents:""}},fetch:function(){this.getContents()},computed:{version:function(){return r.$common.authVersions[this.category]}},watch:{category:function(){this.$fetch()}},methods:{getContents:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){var n,data;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,e.next=3,t.getFile();case 3:n=e.sent,data=Object(html.a)(n,{blockTextElements:{script:!1,style:!1}}),t.contents=data.innerHTML,e.next=10;break;case 8:e.prev=8,e.t0=e.catch(0);case 10:case"end":return e.stop()}}),e,null,[[0,8]])})))()},getFile:function(){var t=this;return Object(o.a)(regeneratorRuntime.mark((function e(){var n,o,data;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:n="/history/auth_policy/".concat(t.category,"/v").concat(t.version,".html"),e.next=3;break;case 3:return e.next=5,Object(c.m)(n);case 5:return o=e.sent,data=o.data,e.abrupt("return",data);case 8:case"end":return e.stop()}}),e)})))()}}},f=(n(921),n(64)),component=Object(f.a)(l,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"wrap"},[n("h2",{staticClass:"blind"},[t._v("검수 기준내용")]),n("div",{staticClass:"content",domProps:{innerHTML:t._s(t.contents)}})])}),[],!1,null,"454fa0b2",null);e.a=component.exports},921:function(t,e,n){"use strict";n(846)},922:function(t,e,n){"use strict";n(847)},923:function(t,e,n){"use strict";n(848)},930:function(t,e,n){"use strict";n(26),n(51),n(466);var o=n(173),r=n(827),c=n(842),l=n(1465),f={components:{LayerAuthPolicy:r.a,LayerFaq:c.a,LayerFrame:l.a},props:{floatingPrice:{type:Boolean,default:!1}},data:function(){return{openBusinessInfo:!1,arrClass:"arr-down",openLayerPolicy:!1,openLayerFaq:!1,openLayerPenalty:!1,openLayerGuide:!1,openLayerEscrow:!1}},computed:{mediationNotice:function(){return o.$common.mediationNotice.footer},isLuckyDraw:function(){var t;return null!=o.$product&&!this.$lodash.isEmpty(null===(t=o.$product.response)||void 0===t?void 0:t.event)},config:function(){return o.$common.appConfig||{}},bussinessInfo:function(){var t,e,n=null===(t=o.$common.appConfig)||void 0===t||null===(e=t.home_footer_business_info)||void 0===e?void 0:e.replace("사업자정보확인",'<a href="'.concat(o.$common.appConfig.home_footer_business_registration_url,'">사업자정보확인</a>'));return this.$isMobile(this.$mq)?null==n?void 0:n.replaceAll("\n","<br/>"):null==n?void 0:n.replaceAll("\n",'<span class="blank"></span>')}},methods:{open:function(){this.openBusinessInfo=!this.openBusinessInfo,this.changeClass()},changeClass:function(){this.openBusinessInfo?this.arrClass="arr-up":this.arrClass="arr-down"},onClickFtc:function(){window.open(o.$common.appConfig.home_footer_business_registration_url,"_blank")},onClickInstagram:function(){window.open(o.$common.appConfig.kream_instagram_url,"_blank")},onClickFacebook:function(){window.open(o.$common.appConfig.kream_facebook_url,"_blank")},onClickTalk:function(){window.open(o.$common.appConfig.kream_talkchannel_url,"_blank")}}},d=(n(2240),n(64)),component=Object(d.a)(f,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"footer",class:[t.$mq,{floating_price:t.floatingPrice&&!t.isLuckyDraw}]},[n("div",{staticClass:"inner"},[n("div",{staticClass:"service_area"},[n("div",{staticClass:"customer_service"},[t._m(0),n("div",{staticClass:"service_time"},[n("dl",{staticClass:"time_box"},[n("dt",{staticClass:"time_term",domProps:{innerHTML:t._s(t.config.customer_center_description)}})])]),n("p",{staticClass:"service_noti"},[t._v("1:1 문의하기는 앱에서만 가능합니다.")]),n("div",{staticClass:"service_btn_box"},[n("BaseButton",{attrs:{tag:"a",href:"#","style-type":"solid",size:"small"},on:{onClick:function(e){return t.$router.push("/faq")}}},[t._v(" 자주 묻는 질문 ")])],1)]),n("div",{staticClass:"footer_menu"},[n("div",{staticClass:"menu_box"},[n("strong",{staticClass:"menu_title"},[t._v("이용안내")]),n("ul",{staticClass:"menu_list"},[n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"#"},on:{click:function(e){e.preventDefault(),t.openLayerPolicy=!0}}},[t._v(" 검수기준 ")])]),n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"#"},on:{click:function(e){e.preventDefault(),t.openLayerFaq=!0}}},[t._v(" 이용정책 ")])]),n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"#"},on:{click:function(e){e.preventDefault(),t.openLayerPenalty=!0}}},[t._v(" 페널티 정책 ")])]),n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"#"},on:{click:function(e){e.preventDefault(),t.openLayerGuide=!0}}},[t._v(" 커뮤니티 가이드라인 ")])])])]),n("div",{staticClass:"menu_box"},[n("strong",{staticClass:"menu_title"},[t._v("고객지원")]),n("ul",{staticClass:"menu_list"},[t._m(1),t._m(2),n("li",{staticClass:"menu_item"},[n("nuxt-link",{staticClass:"menu_link",attrs:{to:"/showroom",target:t.$isMobile(t.$mq)?"_self":"_blank"}},[t._v(" 쇼룸 안내 ")])],1),t._m(3)])])])]),n("div",{staticClass:"corporation_area"},[n("ul",{staticClass:"term_list"},[t._m(4),t._m(5),n("li",{directives:[{name:"show",rawName:"v-show",value:t.$isPc(t.$mq),expression:"$isPc($mq)"}],staticClass:"term_item"},[n("a",{staticClass:"term_link",attrs:{href:"https://www.kreamcorp.com/view/contact.html",target:"_blank",rel:"noopener noreferrer"}},[t._v(" 제휴제안 ")])]),n("li",{staticClass:"term_item"},[n("a",{staticClass:"term_link",attrs:{href:"#"},on:{click:function(e){return e.preventDefault(),t.$router.push("/agreement")}}},[t._v(" 이용약관 ")])]),n("li",{staticClass:"term_item privacy"},[n("a",{staticClass:"term_link",attrs:{href:"#"},on:{click:function(e){return e.preventDefault(),t.$router.push("/privacy")}}},[t._v(" 개인정보처리방침 ")])])]),n("div",{staticClass:"footer_sns"},[n("div",{staticClass:"sns_box"},[n("a",{staticClass:"sns",attrs:{href:"#","aria-label":"인스타그램"},on:{click:function(e){return e.preventDefault(),t.onClickInstagram.apply(null,arguments)}}},[n("svg-icon",{staticClass:"ico-instagram",attrs:{name:"ico-instagram"}})],1),n("a",{staticClass:"sns",attrs:{href:"#","aria-label":"페이스북"},on:{click:function(e){return e.preventDefault(),t.onClickFacebook.apply(null,arguments)}}},[n("svg-icon",{staticClass:"ico-facebook",attrs:{name:"ico-facebook"}})],1),n("a",{staticClass:"sns",attrs:{href:"#","aria-label":"카카오톡"},on:{click:function(e){return e.preventDefault(),t.onClickTalk.apply(null,arguments)}}},[n("svg-icon",{staticClass:"ico-talk",attrs:{name:"ico-talk"}})],1)]),n("button",{staticClass:"btn_business",on:{click:t.open}},[t._v(" 사업자정보 "),n("svg-icon",{staticClass:"arr-down",attrs:{name:t.arrClass}})],1)]),n("div",{class:["business_info",{open:t.openBusinessInfo}]},[n("div",{staticClass:"info_list"},[n("dl",{staticClass:"info_item"},[n("dt",{staticClass:"business_title",domProps:{innerHTML:t._s(t.bussinessInfo)}})])])])]),n("div",{staticClass:"notice_area"},[n("p",{staticClass:"notice"},[t._v(t._s(t.mediationNotice))]),n("p",{staticClass:"copyright"},[t._v("© KREAM Corp.")])])]),t.openLayerPolicy?n("LayerAuthPolicy",{attrs:{"show-layer":t.openLayerPolicy},on:{close:function(e){t.openLayerPolicy=!1}}}):t._e(),t.openLayerFaq?n("LayerFaq",{attrs:{"show-layer":t.openLayerFaq,category:"policy",title:"이용정책"},on:{close:function(e){t.openLayerFaq=!1}}}):t._e(),t.openLayerPenalty?n("LayerFaq",{attrs:{"faq-id":"penalty","show-layer":t.openLayerPenalty,title:"페널티 정책"},on:{close:function(e){t.openLayerPenalty=!1}}}):t._e(),t.openLayerGuide?n("LayerFaq",{attrs:{"faq-id":"community_guidelines","show-layer":t.openLayerGuide,title:"커뮤니티 가이드라인"},on:{close:function(e){t.openLayerGuide=!1}}}):t._e(),t.openLayerEscrow?n("LayerFrame",{attrs:{url:"https://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=AGLCL",showLayer:t.openLayerEscrow,width:"500px",height:"450px"},on:{close:function(e){t.openLayerEscrow=!1}}}):t._e()],1)}),[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("strong",{staticClass:"service_title"},[t._v("고객센터"),n("a",{staticClass:"sevice_tel",attrs:{href:"tel:1588-7813"}},[t._v("1588-7813")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"/notice"}},[t._v("공지사항")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"/about",target:"_blank"}},[t._v("서비스 소개")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"menu_item"},[n("a",{staticClass:"menu_link",attrs:{href:"/about/seller_reception",target:"_blank"}},[t._v("판매자 방문접수")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"term_item"},[n("a",{staticClass:"term_link",attrs:{href:"https://www.kreamcorp.com/",target:"_blank",rel:"noopener noreferrer"}},[t._v(" 회사소개 ")])])},function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("li",{staticClass:"term_item"},[n("a",{staticClass:"term_link",attrs:{href:"https://recruit.kreamcorp.com/kream/recruitMain",target:"_blank",rel:"noopener noreferrer"}},[t._v(" 인재채용 ")])])}],!1,null,"4cc9b583",null);e.a=component.exports;installComponents(component,{BaseButton:n(461).default})}}]);