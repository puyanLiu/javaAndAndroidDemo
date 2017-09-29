.class public Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "EmailRegisterH5Plugin.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Landroid/app/Activity;

.field private f:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private g:Lcom/ali/user/mobile/service/UserRegisterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    .line 35
    const-string/jumbo v0, "_ap_action=registerActive"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "activeUserValid.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->b:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "email="

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->c:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->d:Landroid/os/Handler;

    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 46
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->g:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "\u53bb\u767b\u9646, account:%s, token:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iput-object p1, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 192
    :cond_0
    if-eqz p2, :cond_1

    .line 193
    iput-object p2, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 195
    :cond_1
    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "from_register"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 142
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "\u90ae\u7bb1\u6ce8\u518c\u7ed3\u679c, resultStatus:%s, msg:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    .line 144
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string/jumbo v1, "showOptionalInfo"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->showOptionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "agreementURL"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->agreementURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "optionStatus"

    iget-boolean v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->optionStatus:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    const-class v3, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v0, "token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 175
    :goto_0
    return-void

    .line 154
    :cond_0
    const/16 v1, 0xbc2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbc1

    if-ne v0, v1, :cond_2

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->reregister:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;-><init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;)V

    move-object v6, v5

    .line 155
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_2
    const/16 v1, 0xbc3

    if-ne v0, v1, :cond_3

    .line 164
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->dologin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;-><init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    move-object v6, v5

    .line 164
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, ""

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected doEmailRegister(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f00\u59cb\u90ae\u7bb1\u6ce8\u518c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->g:Lcom/ali/user/mobile/service/UserRegisterService;

    invoke-interface {v1, v0, p1}, Lcom/ali/user/mobile/service/UserRegisterService;->emailActivateV2(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->d:Landroid/os/Handler;

    new-instance v2, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;-><init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 136
    throw v0
.end method

.method protected goRegister()V
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "\u53bb\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    const-class v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 60
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "EmailRegisterH5Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invoke url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v1, "EmailRegisterH5Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onOverrideUrlLoading:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/util/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    new-instance v1, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;-><init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    move v0, v7

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->webview_back_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->yes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$5;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$5;-><init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;)V

    iget-object v5, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/ali/user/mobile/security/ui/R$string;->no:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/h5/AUH5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "loginId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "_ap_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "msg"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "setNick"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v8, "token"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 98
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    const-string/jumbo v1, "login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "action = login"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v3, v4}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v0, v7

    .line 119
    :goto_2
    return v0

    .line 102
    :cond_1
    const-string/jumbo v1, "registerActive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "action = registerActive"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->doEmailRegister(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_2
    const-string/jumbo v1, "openDialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "action = openDialog"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-string/jumbo v0, "EmailRegisterH5Plugin"

    const-string/jumbo v1, "setNick = true"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v3, v6}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 116
    goto :goto_2

    .line 119
    :cond_4
    invoke-super {p0, p1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public setActivityRef(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->e:Landroid/app/Activity;

    .line 51
    return-void
.end method
