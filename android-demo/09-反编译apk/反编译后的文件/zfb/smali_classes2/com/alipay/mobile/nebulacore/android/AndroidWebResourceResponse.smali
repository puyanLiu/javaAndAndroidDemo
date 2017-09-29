.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;
.super Ljava/lang/Object;
.source "AndroidWebResourceResponse.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    .line 17
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 52
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->setEncoding(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceResponse;->a:Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 72
    return-void
.end method
