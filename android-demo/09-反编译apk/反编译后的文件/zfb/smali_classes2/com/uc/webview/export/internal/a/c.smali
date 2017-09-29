.class public final Lcom/uc/webview/export/internal/a/c;
.super Lcom/uc/webview/export/internal/c;
.source "ProGuard"


# static fields
.field static f:Ljava/lang/Runnable;

.field private static g:Lcom/uc/webview/export/internal/utility/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/uc/webview/export/internal/a/d;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/a/d;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/a/c;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/uc/webview/export/internal/c;-><init>()V

    .line 62
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->g:Lcom/uc/webview/export/internal/utility/a;

    if-nez v0, :cond_0

    .line 63
    new-instance v1, Lcom/uc/webview/export/internal/utility/a;

    invoke-direct {v1, p1}, Lcom/uc/webview/export/internal/utility/a;-><init>(Landroid/content/Context;)V

    .line 64
    sput-object v1, Lcom/uc/webview/export/internal/a/c;->g:Lcom/uc/webview/export/internal/utility/a;

    new-instance v0, Lcom/uc/webview/export/internal/a/e;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/a/e;-><init>(Lcom/uc/webview/export/internal/a/c;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->b:Lcom/uc/webview/export/internal/utility/a$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->a:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/a;->a(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->b:Lcom/uc/webview/export/internal/utility/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->b:Lcom/uc/webview/export/internal/utility/a$a;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/utility/a$a;->a()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->b:Lcom/uc/webview/export/internal/utility/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/a;->b:Lcom/uc/webview/export/internal/utility/a$a;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/utility/a$a;->b()V

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->a:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/uc/webview/export/internal/a/c;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/a/c;->d:I

    return v0
.end method

.method static synthetic d()Lcom/uc/webview/export/internal/utility/a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->g:Lcom/uc/webview/export/internal/utility/a;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/uc/webview/export/internal/a/c;->b:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/uc/webview/export/internal/a/c;->c:I

    if-ne v0, p2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onWindowSizeChanged()V

    .line 107
    sput p1, Lcom/uc/webview/export/internal/a/c;->b:I

    .line 108
    sput p2, Lcom/uc/webview/export/internal/a/c;->c:I

    goto :goto_0
.end method

.method public final a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 112
    const-string/jumbo v0, "WebViewDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onWindowVisibilityChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->notifyForegroundChanged(Z)V

    .line 119
    if-nez p2, :cond_2

    .line 120
    sget v0, Lcom/uc/webview/export/internal/a/c;->d:I

    if-eq v0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onResume()V

    .line 122
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v2, "WebViewDetector:onResume"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sput v1, Lcom/uc/webview/export/internal/a/c;->d:I

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_2
    sget v0, Lcom/uc/webview/export/internal/a/c;->d:I

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->e:Landroid/os/Handler;

    sget-object v1, Lcom/uc/webview/export/internal/a/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->e:Landroid/os/Handler;

    sget-object v1, Lcom/uc/webview/export/internal/a/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/uc/webview/export/internal/a/c;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "WebViewDetector:destroy"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onDestroy()V

    .line 145
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/a/a/a;->a()V

    .line 147
    :cond_1
    return-void
.end method
