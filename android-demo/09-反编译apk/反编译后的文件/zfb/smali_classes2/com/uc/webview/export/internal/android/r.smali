.class final Lcom/uc/webview/export/internal/android/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/q;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/q;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/r;->a:Lcom/uc/webview/export/internal/android/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/uc/webview/export/internal/android/q;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 27
    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/uc/webview/export/internal/android/q;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 36
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    .line 37
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/a/a/a;->a()V

    .line 40
    invoke-static {}, Lcom/uc/webview/export/internal/android/q;->c()I

    .line 43
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
