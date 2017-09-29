.class final Lcom/uc/webview/export/internal/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/utility/a$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/uc/webview/export/internal/a/c;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/a/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/e;->b:Lcom/uc/webview/export/internal/a/c;

    iput-object p2, p0, Lcom/uc/webview/export/internal/a/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onScreenOn: onScreenOn"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/uc/webview/export/internal/a/c;->d()Lcom/uc/webview/export/internal/utility/a;

    iget-object v0, p0, Lcom/uc/webview/export/internal/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onScreenUnLock()V

    .line 71
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onResume()V

    .line 72
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onScreenOn: onScreenUnLock"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onScreenOff: onScreenOff"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onScreenLock()V

    .line 82
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onPause()V

    .line 83
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onScreenOff: onScreenLock"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onUserPresent: onUserPresent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onScreenUnLock()V

    .line 92
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onResume()V

    .line 93
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v1, "onUserPresent: onScreenUnLock"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method
