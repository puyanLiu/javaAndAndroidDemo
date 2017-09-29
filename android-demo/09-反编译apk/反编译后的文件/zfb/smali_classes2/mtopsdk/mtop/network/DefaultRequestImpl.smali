.class public Lmtopsdk/mtop/network/DefaultRequestImpl;
.super Ljava/lang/Object;
.source "DefaultRequestImpl.java"

# interfaces
.implements Lanetwork/channel/Request;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bodyHandler:Lanetwork/channel/IBodyHandler;

.field private charset:Ljava/lang/String;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private retryTime:I

.field private sslCallback:Lanetwork/channel/ssl/ISslCallback;

.field private trySpdy:Z

.field private uri:Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private url:Ljava/net/URL;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->method:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->charset:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->bodyHandler:Lanetwork/channel/IBodyHandler;

    .line 34
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->method:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->charset:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->bodyHandler:Lanetwork/channel/IBodyHandler;

    .line 34
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    .line 40
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->uri:Ljava/net/URI;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->method:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->charset:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->bodyHandler:Lanetwork/channel/IBodyHandler;

    .line 34
    iput-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    .line 58
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->url:Ljava/net/URL;

    .line 59
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    .line 84
    :cond_2
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBodyHandler()Lanetwork/channel/IBodyHandler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->bodyHandler:Lanetwork/channel/IBodyHandler;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->isRedirect:Z

    return v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-object v2

    .line 120
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 123
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    .line 130
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_2
    move-object v2, v0

    .line 142
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public getHeartInterval()J
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->params:Ljava/util/List;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->version:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getRetryCallback()Lanetwork/channel/persistent/IRetryCallback;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->retryTime:I

    return v0
.end method

.method public getSslCallback()Lanetwork/channel/ssl/ISslCallback;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isTrySpdy()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->trySpdy:Z

    return v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public setBodyHandler(Lanetwork/channel/IBodyHandler;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->bodyHandler:Lanetwork/channel/IBodyHandler;

    .line 187
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->charset:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->isRedirect:Z

    .line 67
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 3

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    .line 101
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_1
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 103
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->headers:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->method:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->params:Ljava/util/List;

    .line 183
    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->version:Lorg/apache/http/ProtocolVersion;

    .line 175
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->retryTime:I

    .line 159
    return-void
.end method

.method public setSslCallback(Lanetwork/channel/ssl/ISslCallback;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    .line 205
    return-void
.end method

.method public setTrySpdy(Z)V
    .locals 0

    .prologue
    .line 194
    iput-boolean p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->trySpdy:Z

    .line 196
    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->uri:Ljava/net/URI;

    .line 51
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultRequestImpl;->url:Ljava/net/URL;

    .line 229
    return-void
.end method
