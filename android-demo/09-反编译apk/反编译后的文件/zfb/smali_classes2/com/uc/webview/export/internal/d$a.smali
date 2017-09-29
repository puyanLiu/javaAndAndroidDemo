.class final Lcom/uc/webview/export/internal/d$a;
.super Lcom/uc/webview/export/internal/a;
.source "ProGuard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/uc/webview/export/internal/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/uc/webview/export/internal/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 546
    invoke-static {p1}, Lcom/uc/webview/export/internal/d;->d(Landroid/content/Context;)V

    .line 547
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-static {}, Lcom/uc/webview/export/internal/d;->i()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "stat"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    :cond_0
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->n()I

    move-result v0

    .line 549
    sget-boolean v2, Lcom/uc/webview/export/internal/d;->g:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    move v0, v1

    .line 552
    :cond_2
    const/4 v2, 0x0

    aput v0, p4, v2

    .line 553
    if-ne v0, v1, :cond_4

    .line 554
    new-instance v0, Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-direct {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V

    .line 556
    :goto_1
    return-object v0

    .line 547
    :cond_3
    iget-object v2, v0, Lcom/uc/webview/export/internal/a/a/a;->e:Landroid/os/Handler;

    new-instance v3, Lcom/uc/webview/export/internal/a/a/b;

    invoke-direct {v3, v0}, Lcom/uc/webview/export/internal/a/a/b;-><init>(Lcom/uc/webview/export/internal/a/a/a;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 556
    :cond_4
    invoke-static {p1}, Lcom/uc/webview/export/internal/a/a;->a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    goto :goto_1
.end method
