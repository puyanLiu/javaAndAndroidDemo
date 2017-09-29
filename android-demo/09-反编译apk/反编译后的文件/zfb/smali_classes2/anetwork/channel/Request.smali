.class public interface abstract Lanetwork/channel/Request;
.super Ljava/lang/Object;
.source "Request.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBodyHandler()Lanetwork/channel/IBodyHandler;
.end method

.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getConnectTimeout()I
.end method

.method public abstract getFollowRedirects()Z
.end method

.method public abstract getHeaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
.end method

.method public abstract getHeartInterval()J
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getParams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProtocolVersion()Lorg/apache/http/ProtocolVersion;
.end method

.method public abstract getReadTimeout()I
.end method

.method public abstract getRetryCallback()Lanetwork/channel/persistent/IRetryCallback;
.end method

.method public abstract getRetryTime()I
.end method

.method public abstract getSslCallback()Lanetwork/channel/ssl/ISslCallback;
.end method

.method public abstract getURI()Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public abstract setBodyHandler(Lanetwork/channel/IBodyHandler;)V
.end method

.method public abstract setHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setParams(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRetryTime(I)V
.end method

.method public abstract setSslCallback(Lanetwork/channel/ssl/ISslCallback;)V
.end method

.method public abstract setUri(Ljava/net/URI;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
