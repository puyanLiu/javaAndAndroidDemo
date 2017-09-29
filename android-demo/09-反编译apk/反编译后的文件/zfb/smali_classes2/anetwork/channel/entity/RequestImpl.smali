.class public Lanetwork/channel/entity/RequestImpl;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Lanetwork/channel/Request;


# instance fields
.field private a:Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/net/URL;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lorg/apache/http/ProtocolVersion;

.field private j:Lanetwork/channel/IBodyHandler;

.field private k:Lanetwork/channel/ssl/ISslCallback;

.field private l:Lanetwork/channel/persistent/IRetryCallback;

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->g:I

    .line 28
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->h:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanetwork/channel/IBodyHandler;

    .line 31
    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->k:Lanetwork/channel/ssl/ISslCallback;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->g:I

    .line 28
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->h:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanetwork/channel/IBodyHandler;

    .line 31
    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->k:Lanetwork/channel/ssl/ISslCallback;

    .line 45
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->n:I

    .line 238
    return-void
.end method

.method public final a(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    .line 223
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Z

    .line 76
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    .line 93
    :cond_2
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->o:I

    .line 242
    return-void
.end method

.method public getBodyHandler()Lanetwork/channel/IBodyHandler;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanetwork/channel/IBodyHandler;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->n:I

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Z

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
    .line 79
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-object v2

    .line 129
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 132
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    .line 138
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
    .line 207
    iget-wide v0, p0, Lanetwork/channel/entity/RequestImpl;->m:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/lang/String;

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
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/util/List;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->o:I

    return v0
.end method

.method public getRetryCallback()Lanetwork/channel/persistent/IRetryCallback;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->l:Lanetwork/channel/persistent/IRetryCallback;

    return-object v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->g:I

    return v0
.end method

.method public getSslCallback()Lanetwork/channel/ssl/ISslCallback;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->k:Lanetwork/channel/ssl/ISslCallback;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    return-object v0
.end method

.method public setBodyHandler(Lanetwork/channel/IBodyHandler;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanetwork/channel/IBodyHandler;

    .line 188
    return-void
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
    .line 83
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->d:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/lang/String;

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
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/util/List;

    .line 183
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->g:I

    .line 159
    return-void
.end method

.method public setSslCallback(Lanetwork/channel/ssl/ISslCallback;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->k:Lanetwork/channel/ssl/ISslCallback;

    .line 198
    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    .line 68
    return-void
.end method
