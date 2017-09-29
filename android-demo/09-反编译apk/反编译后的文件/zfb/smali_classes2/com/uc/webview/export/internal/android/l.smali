.class final Lcom/uc/webview/export/internal/android/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/android/j;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/l;->b:Lcom/uc/webview/export/internal/android/j;

    iput-object p2, p0, Lcom/uc/webview/export/internal/android/l;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 215
    check-cast p1, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/l;->a:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0
.end method
