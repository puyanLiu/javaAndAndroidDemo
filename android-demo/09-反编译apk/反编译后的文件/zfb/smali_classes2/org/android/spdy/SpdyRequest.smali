.class public final Lorg/android/spdy/SpdyRequest;
.super Ljava/lang/Object;
.source "SpdyRequest.java"


# static fields
.field public static final GET_METHOD:Ljava/lang/String; = "GET"

.field public static final POST_METHOD:Ljava/lang/String; = "POST"


# instance fields
.field private connectionTimeoutMs:I

.field private enableQuic:Z

.field private extHead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private port:I

.field private priority:Lorg/android/spdy/RequestPriority;

.field private requestTimeoutMs:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 26
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 27
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 92
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 93
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 95
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 97
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 26
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 27
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 49
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 50
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 51
    iput p3, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 52
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 54
    iput-object p5, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 55
    if-nez p5, :cond_0

    .line 56
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;ZII)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 26
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 27
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 31
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 32
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 33
    iput p3, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 34
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 36
    iput-object p5, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 37
    if-nez p5, :cond_0

    .line 38
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 40
    :cond_0
    iput-boolean p6, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 41
    iput p7, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 42
    iput p8, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 26
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 27
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 61
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 64
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 66
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 67
    if-nez p3, :cond_0

    .line 68
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    .line 26
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 27
    iput v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 74
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 75
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 77
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 79
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 80
    if-nez p3, :cond_0

    .line 81
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 83
    :cond_0
    iput p4, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 84
    iput p5, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 85
    return-void
.end method

.method private getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public final addHeaders(Ljava/util/Map;)V
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
    .line 114
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method final getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/android/spdy/SpdyRequest;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    return v0
.end method

.method final getHeaders()Ljava/util/Map;
    .locals 3
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
    .line 143
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    const-string/jumbo v1, ":path"

    invoke-direct {p0}, Lorg/android/spdy/SpdyRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, ":method"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, ":version"

    const-string/jumbo v2, "HTTP/1.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v1, ":host"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v1, ":scheme"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    :cond_0
    return-object v0
.end method

.method final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    return-object v0
.end method

.method final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method final getPort()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    goto :goto_0
.end method

.method final getPriority()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    invoke-virtual {v0}, Lorg/android/spdy/RequestPriority;->getPriorityInt()I

    move-result v0

    return v0
.end method

.method public final getRequestTimeoutMs()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    return v0
.end method

.method final getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method final getUrlPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/android/spdy/SpdyRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isQuic()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/android/spdy/SpdyRequest;->enableQuic:Z

    return v0
.end method
