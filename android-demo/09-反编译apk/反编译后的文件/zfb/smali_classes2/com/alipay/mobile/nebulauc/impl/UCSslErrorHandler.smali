.class Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;
.super Ljava/lang/Object;
.source "UCSslErrorHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;


# instance fields
.field private mSslErrorHandler:Lcom/uc/webview/export/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;->mSslErrorHandler:Lcom/uc/webview/export/SslErrorHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;->mSslErrorHandler:Lcom/uc/webview/export/SslErrorHandler;

    invoke-virtual {v0}, Lcom/uc/webview/export/SslErrorHandler;->cancel()V

    .line 19
    return-void
.end method

.method public proceed()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;->mSslErrorHandler:Lcom/uc/webview/export/SslErrorHandler;

    invoke-virtual {v0}, Lcom/uc/webview/export/SslErrorHandler;->proceed()V

    .line 24
    return-void
.end method
