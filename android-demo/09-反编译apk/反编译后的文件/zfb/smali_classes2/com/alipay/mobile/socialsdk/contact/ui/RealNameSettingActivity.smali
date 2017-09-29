.class public Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "RealNameSettingActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_realname_setting"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "show_detail"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "show_detail_hint"
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

.field private f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final h:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/bc;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bc;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->h:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    const-string/jumbo v1, "key_aliaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 71
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 72
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 73
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 74
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 75
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://contactsdb/ali_account/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->h:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 81
    const-string/jumbo v0, "m"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->he:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->hide_myname_to_him_tip:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->hide_myname_to_him:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bd;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bd;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/be;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/be;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 81
    :cond_2
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->she:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
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

.method protected loadFriendInfo()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->showToggleButton(Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->h:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 149
    return-void
.end method

.method protected setShowMyRealName(Z)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 113
    :try_start_0
    new-instance v1, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;-><init>()V

    .line 114
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->targetUserId:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->alipayAccount:Ljava/lang/String;

    .line 116
    const-string/jumbo v2, "showRealName"

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchName:Ljava/lang/String;

    .line 117
    iput-boolean p1, v1, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchStatus:Z

    .line 118
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v2, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->setFriendConfig(Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->dismissProgressDialog()V

    .line 120
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 122
    const-string/jumbo v3, "PersonalProfileActivity:setShowMyRealName:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 121
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->d:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 128
    :goto_1
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->showToggleButton(Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V

    .line 127
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->toast(Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 129
    const-string/jumbo v2, "PersonalProfileActivity:setShowMyRealName:\u8bf7\u6c42\u5931\u8d25"

    .line 128
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->b:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->showToggleButton(Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->dismissProgressDialog()V

    .line 135
    throw v0

    .line 127
    :cond_2
    :try_start_1
    const-string/jumbo v0, "\u8bf7\u6c42\u5931\u8d25"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected showToggleButton(Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    .line 143
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
