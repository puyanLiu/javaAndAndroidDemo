.class public Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;
.source "ConfirmAccountFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "fragment_add_confirm"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/common/misc/CircularImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "user_avatar"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userName"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAccount"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "verifyLayout"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "next"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field private h:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

.field private i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private j:Ljava/lang/String;

.field private k:Landroid/os/Bundle;

.field private l:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field public mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    return-object v0
.end method


# virtual methods
.method protected getProfileByRpc()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->alipayAccount:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->targetUserId:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->h:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getProfile(Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 140
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 142
    const-string/jumbo v3, "SingleQueryResult:getProfile:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 141
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->refreshUi()V

    .line 146
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 147
    const-string/jumbo v2, "SingleQueryResult:getProfile:\u8bf7\u6c42\u5931\u8d25"

    .line 146
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 152
    throw v0
.end method

.method protected init()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->requestFocus()Z

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/g;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)V

    .line 69
    const-wide/16 v2, 0x64

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->k:Landroid/os/Bundle;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "key_aliaccout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "key_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->n:Z

    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->h:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->l:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm_account:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/h;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/i;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->b:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/misc/CircularImageView;->setVisibility(I)V

    .line 95
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->n:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->refreshUi()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->getProfileByRpc()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->g:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->backFragment()V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->l:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->b:Lcom/alipay/mobile/common/misc/CircularImageView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->m:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->j:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 129
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->b:Lcom/alipay/mobile/common/misc/CircularImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->g:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 113
    return-void
.end method
