.class final Lcom/uc/webview/export/internal/android/j$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/j;

.field private b:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/j$a;->a:Lcom/uc/webview/export/internal/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/j$a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 33
    return-void
.end method


# virtual methods
.method public final onCustomViewHidden()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j$a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j$a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 40
    :cond_0
    return-void
.end method
