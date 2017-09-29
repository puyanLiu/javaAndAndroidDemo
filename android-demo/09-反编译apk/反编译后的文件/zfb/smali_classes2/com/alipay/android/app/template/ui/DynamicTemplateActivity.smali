.class public Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "DynamicTemplateActivity.java"


# instance fields
.field private a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

.field public publishVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;)Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    const-string/jumbo v0, "DynamicTemplateActivity"

    const-string/jumbo v1, "\u542f\u52a8\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const-string/jumbo v3, "tplId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The template id to launch birdnest container is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->b:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "preload"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 64
    :goto_1
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iput-boolean v0, v3, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->c:Z

    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const-string/jumbo v3, "initData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->d:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const-string/jumbo v3, "rpcOperationType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->e:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    const-string/jumbo v3, "rpcRequestData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->f:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 71
    const-class v2, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 73
    const/4 v2, 0x0

    const-string/jumbo v3, "loading\u2026\u2026"

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 74
    new-instance v3, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;-><init>(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Dialog;)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 99
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 61
    :cond_3
    const-string/jumbo v3, "NO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 62
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    .line 130
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->leavePage(Landroid/view/View;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity$LaunchParams;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->enterPage(Landroid/view/View;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public showTemplate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
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
