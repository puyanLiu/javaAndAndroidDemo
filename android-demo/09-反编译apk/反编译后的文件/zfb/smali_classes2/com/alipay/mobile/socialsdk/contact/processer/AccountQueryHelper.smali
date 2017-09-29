.class public abstract Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field private b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private c:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 38
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->c:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 41
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->e:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/processer/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->c:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->dismissProgressDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 164
    const/4 v2, 0x1

    .line 163
    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 165
    const-string/jumbo v1, "\u6709\u591a\u4e2a\u652f\u4ed8\u5b9d\u8d26\u53f7\uff0c\u8bf7\u9009\u62e9"

    .line 166
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/processer/f;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/processer/f;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    .line 177
    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/processer/g;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/g;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/util/List;)V

    .line 176
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public conversion(Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 2

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 150
    iget-object v1, p1, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->headUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 152
    iget-object v1, p1, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->userAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "by_search"

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->showName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V
.end method

.method public setShowErrorDialog(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->d:Z

    .line 46
    return-void
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    :cond_0
    :goto_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method
