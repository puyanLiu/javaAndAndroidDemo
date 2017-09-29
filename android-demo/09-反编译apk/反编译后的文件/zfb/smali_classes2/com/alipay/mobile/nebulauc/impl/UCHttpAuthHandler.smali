.class Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;
.super Ljava/lang/Object;
.source "UCHttpAuthHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;


# instance fields
.field mHttpAuthHandler:Lcom/uc/webview/export/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;->mHttpAuthHandler:Lcom/uc/webview/export/HttpAuthHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;->mHttpAuthHandler:Lcom/uc/webview/export/HttpAuthHandler;

    invoke-virtual {v0}, Lcom/uc/webview/export/HttpAuthHandler;->cancel()V

    .line 19
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;->mHttpAuthHandler:Lcom/uc/webview/export/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;->mHttpAuthHandler:Lcom/uc/webview/export/HttpAuthHandler;

    invoke-virtual {v0}, Lcom/uc/webview/export/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
