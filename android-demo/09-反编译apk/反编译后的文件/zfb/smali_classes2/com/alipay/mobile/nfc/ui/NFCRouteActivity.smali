.class public Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "NFCRouteActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "NFC/Route"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->finish()V

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 174
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u8be5\u5361\u6682\u65f6\u65e0\u6cd5\u8bc6\u522b\uff0c\u662f\u5426\u613f\u610f\u4e0a\u62a5\u5361\u7c7b\u578b\u4fe1\u606f\uff0c\u4ee5\u652f\u6301\u6211\u4eec\u540e\u7eed\u4f18\u5316?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u5b9a"

    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;-><init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$3;-><init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "finishWithCheck - inside"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "finishWithCheck - outside"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreate - create nfc activity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 41
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->setContentView(I)V

    .line 42
    sget v0, Lcom/alipay/mobile/nfc/R$id;->K:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$1;-><init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->cancel(Z)Z

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->dismissProgressDialog()V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b()V

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onNewIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->cancel(Z)Z

    .line 59
    :cond_0
    const-string/jumbo v0, "nfcparam"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b:Landroid/os/Bundle;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->d:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$NfcRouteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not get nfc param from intent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onPause"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onStart()V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onStart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onStop()V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onStop"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
