.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;
.super Lcom/ali/user/mobile/sms/ui/SmsActivity;
.source "AliUserRegisterSMSExActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_sms_register"
.end annotation


# instance fields
.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smssend_title"
    .end annotation
.end field

.field protected mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

.field protected mobileNoTv:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mobileNo"
    .end annotation
.end field

.field protected smsendView:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smsend_ex_view"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->sms_verify_alert:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->title_back:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    .line 120
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->wait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v1

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->a()V

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 148
    if-eqz p1, :cond_2

    .line 149
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SendSms result\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    .line 153
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startAutoReadSms()V

    .line 169
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    const-string/jumbo v2, "207"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->toast(Ljava/lang/String;I)V

    .line 164
    :cond_2
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    goto :goto_0
.end method

.method protected afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 220
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "VerifySms result\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",paypassword type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->simplePassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 226
    const-class v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "showOptionalInfo"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->showOptionalInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "agreementURL"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->agreementURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "optionStatus"

    iget-boolean v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->optionStatus:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "token"

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mobile_for_sms"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "from_register"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_1
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xbbf

    if-ne v0, v2, :cond_2

    .line 229
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->h5Url:Ljava/lang/String;

    new-instance v2, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;-><init>()V

    invoke-virtual {v2, p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->setActivityRef(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "mToken"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 230
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto/16 :goto_0

    .line 231
    :cond_2
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_3

    .line 232
    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$5;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 239
    :cond_3
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf7

    if-eq v0, v1, :cond_4

    .line 240
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf8

    if-eq v0, v1, :cond_4

    .line 241
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf9

    if-ne v0, v1, :cond_5

    .line 242
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "direct_login"

    iget-boolean v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->directLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "login_token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "aliuser_h5url"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "same_user_info"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto/16 :goto_0

    .line 245
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected afterViews()V
    .locals 6

    .prologue
    .line 69
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->afterViews()V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNoTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+86 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/ali/user/mobile/utils/StringUtil;->displayWithComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startAutoReadSms()V

    .line 90
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->smsForMobileTipEx:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->sms_tip_highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 94
    if-gez v0, :cond_2

    .line 111
    :goto_1
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNoTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->checkCodeStringColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mSmsMobileTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->smsendView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method protected doVerifySms(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserRegisterService;->setMobileNo(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ali/user/mobile/service/UserRegisterService;->verifyMobileAndRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 197
    throw v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 177
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    if-ne v0, v1, :cond_0

    .line 178
    const-string/jumbo v0, "UC-ZC-150512-13"

    const-string/jumbo v1, "zcsmsnext"

    const-string/jumbo v2, "RegisterSMS"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->showProgress(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->doVerifySms(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->closeInputMethod(Landroid/view/View;)V

    .line 299
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->a()V

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v0, "UC-ZC-150512-12"

    const-string/jumbo v1, "zcsmsredo"

    const-string/jumbo v2, "RegisterSMS"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    const-string/jumbo v2, "register"

    invoke-interface {v0, v1, p1, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 134
    throw v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mAppId:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
