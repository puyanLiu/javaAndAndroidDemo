.class public Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "FriendVerifyActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "add_friend_verify_activity"
.end annotation


# static fields
.field public static final MAX_LEN:I = 0x28


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "add_friend_verify_title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "verify_msg_edit"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "hiderealname"
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field private h:I

.field private i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 42
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->h:I

    .line 59
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->g:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->j:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iput-object p0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->k:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    const-string/jumbo v0, "aliaccount"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->e:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->f:Ljava/lang/String;

    .line 92
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 93
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 94
    if-eqz v0, :cond_1

    .line 95
    const-string/jumbo v1, "SOCIAL_CONTACT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    const-string/jumbo v1, "real_name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->add_friend_verify_send:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLength(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->setMyName()V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/q;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/q;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->h:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    .line 109
    :goto_3
    return-void

    .line 71
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto/16 :goto_0

    .line 80
    :cond_2
    :try_start_2
    const-string/jumbo v0, "userId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "source"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->f:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "loginId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->finish()V

    goto :goto_3

    .line 103
    :catch_2
    move-exception v0

    iput v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->h:I

    goto :goto_2

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->g:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/r;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/r;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    goto :goto_3
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->showKeyBoard(Landroid/app/Activity;Landroid/view/View;)V

    .line 158
    return-void
.end method

.method protected sendVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 203
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 205
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 207
    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 205
    const-class v3, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 210
    new-instance v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;

    invoke-direct {v3}, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;-><init>()V

    .line 220
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->g:Z

    if-eqz v4, :cond_1

    :goto_0
    iput-boolean v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->showRealName:Z

    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->f:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->source:Ljava/lang/String;

    .line 222
    iput-object p1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->message:Ljava/lang/String;

    .line 223
    iput-object p2, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->bizType:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->targetUserId:Ljava/lang/String;

    .line 225
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->remarkName:Ljava/lang/String;

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->e:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->alipayAccount:Ljava/lang/String;

    .line 232
    :try_start_0
    invoke-interface {v0, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->addFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v2

    .line 233
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->dismissProgressDialog()V

    .line 234
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x13b

    if-ne v0, v1, :cond_2

    .line 262
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 220
    goto :goto_0

    .line 238
    :cond_2
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x132

    if-ne v0, v1, :cond_3

    .line 239
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateFriendStatusById(Ljava/lang/String;)V

    .line 243
    :cond_3
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    .line 246
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x144

    if-ne v0, v1, :cond_4

    .line 247
    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/s;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/s;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V

    .line 252
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 247
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->dismissProgressDialog()V

    .line 265
    throw v0

    .line 254
    :cond_4
    :try_start_1
    iget-object v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 259
    :cond_5
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->markTouch(Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->k:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->add_friend_button_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->toast(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->finish()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected setMyName()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 114
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 115
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 117
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->add_friend_send_msg:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->j:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->k:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/o;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/o;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
