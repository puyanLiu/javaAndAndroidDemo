.class public Lcom/alipay/android/app/template/ui/DynamicAppActivity;
.super Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;
.source "DynamicAppActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/atomic/AtomicReference;

.field private g:Z

.field private h:Lcom/alipay/android/app/template/service/DynamicTemplateService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->h:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eqz p2, :cond_0

    :goto_0
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$PostViewRunnable;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$2;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->h:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$3;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->dismissProgressDialog()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->g:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/alipay/android/app/template/R$layout;->activity_app_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->setContentView(I)V

    .line 65
    sget v0, Lcom/alipay/android/app/template/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->showBackButton()V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    const-string/jumbo v1, "tplId"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a:Ljava/lang/String;

    .line 71
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b:Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "rpcOperationType"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c:Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "rpcRequestData"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 75
    const-string/jumbo v1, "rpcRequestData"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d:Ljava/lang/String;

    .line 81
    :cond_0
    const-string/jumbo v1, "initData"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->e:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 83
    const-string/jumbo v1, "initData"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 84
    if-eqz v1, :cond_1

    .line 85
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->e:Ljava/lang/String;

    .line 89
    :cond_1
    const-string/jumbo v1, "true"

    const-string/jumbo v3, "debug"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->g:Z

    .line 91
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->h:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 96
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->d:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    .line 101
    return-void

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
