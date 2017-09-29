.class final Lcom/uc/webview/export/internal/android/h;
.super Lcom/uc/webview/export/SslErrorHandler;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# instance fields
.field private a:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/uc/webview/export/SslErrorHandler;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/h;->a:Landroid/webkit/SslErrorHandler;

    .line 17
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/h;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 27
    return-void
.end method

.method public final proceed()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/h;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 22
    return-void
.end method
