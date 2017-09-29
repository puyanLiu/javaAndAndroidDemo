.class public interface abstract Lcom/alipay/mobile/nebula/webview/APWebResourceResponse;
.super Ljava/lang/Object;
.source "APWebResourceResponse.java"


# virtual methods
.method public abstract getData()Ljava/io/InputStream;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getReasonPhrase()Ljava/lang/String;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
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
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract setData(Ljava/io/InputStream;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
.end method

.method public abstract setResponseHeaders(Ljava/util/Map;)V
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
.end method

.method public abstract setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
.end method
