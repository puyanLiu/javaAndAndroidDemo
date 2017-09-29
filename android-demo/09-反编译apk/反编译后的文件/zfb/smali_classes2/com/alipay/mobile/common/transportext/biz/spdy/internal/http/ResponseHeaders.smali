.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field static final RESPONSE_SOURCE:Ljava/lang/String;

.field static final SELECTED_TRANSPORT:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    .line 95
    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 107
    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->ageSeconds:I

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 114
    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentLength:I

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 119
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 121
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;)V

    move v0, v1

    .line 139
    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 140
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string/jumbo v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser$CacheControlHandler;)V

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_2
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 148
    :cond_3
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 150
    :cond_4
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_5
    const-string/jumbo v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 156
    :cond_6
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 157
    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 158
    :cond_7
    const-string/jumbo v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 161
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 163
    :cond_8
    const-string/jumbo v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 164
    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    :cond_9
    const-string/jumbo v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 167
    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 168
    :cond_a
    const-string/jumbo v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 169
    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 170
    :cond_b
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 172
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 174
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 175
    :cond_c
    const-string/jumbo v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 176
    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 177
    :cond_d
    sget-object v5, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 178
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 179
    :cond_e
    sget-object v5, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1

    .line 183
    :cond_f
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 291
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 293
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->ageSeconds:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 296
    :cond_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sentRequestMillis:J

    sub-long/2addr v2, v4

    .line 297
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v4

    .line 298
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 306
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 307
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 321
    :cond_0
    :goto_0
    return-wide v0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 310
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 311
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 309
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 318
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 319
    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    goto :goto_0

    .line 317
    :cond_4
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_2

    :cond_5
    move-wide v0, v2

    .line 319
    goto :goto_0

    :cond_6
    move-wide v0, v2

    .line 321
    goto :goto_0
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 493
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final chooseResponseSource(JLcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    .line 389
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isCacheable(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    .line 435
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->isNoCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v6

    .line 398
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v0

    .line 400
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 401
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 405
    :cond_3
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 406
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 410
    :goto_1
    iget-boolean v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v8, :cond_4

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 411
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 414
    :cond_4
    iget-boolean v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noCache:Z

    if-nez v8, :cond_7

    add-long v8, v6, v2

    add-long/2addr v4, v0

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    .line 415
    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_5
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    goto/16 :goto_0

    .line 425
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 431
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 435
    :cond_9
    invoke-virtual {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    goto/16 :goto_0

    .line 427
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_2

    .line 435
    :cond_b
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method public final combine(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 464
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    move v0, v1

    .line 467
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 468
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    .line 469
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "Warning"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 471
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 474
    :cond_1
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 479
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 481
    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    return-object v0
.end method

.method public final getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public final getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method public final getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public final getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public final getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public final getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public final hasConnectionClose()Z
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasVaryAll()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCacheable(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    .line 341
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasAuthorization()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isPublic:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 355
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noStore:Z

    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isChunked()Z
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 186
    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isMustRevalidate()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public final isNoCache()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public final isNoStore()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public final setLocalTimestamps(JJ)V
    .locals 3

    .prologue
    .line 272
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->sentRequestMillis:J

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-wide p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->receivedResponseMillis:J

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public final setResponseSource(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final setTransport(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public final stripContentEncoding()V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final stripContentLength()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->contentLength:I

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public final validate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 456
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
