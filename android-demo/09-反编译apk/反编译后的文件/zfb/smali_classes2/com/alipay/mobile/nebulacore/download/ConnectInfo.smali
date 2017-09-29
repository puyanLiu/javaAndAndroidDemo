.class public Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
.super Ljava/lang/Object;
.source "ConnectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/ConnectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST:Ljava/lang/String; = "request"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field public static final TAG:Ljava/lang/String; = "ConnectInfo"

.field public static final TIMEOUT_LONG:I = 0xea60

.field public static final TIMEOUT_SHORT:I = 0x4e20


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field private f:I

.field private g:Lorg/apache/http/HttpEntity;

.field private h:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->b:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->c:Ljava/lang/String;

    .line 54
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->f:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->NONE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    .line 58
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/util/HashMap;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/nebulacore/download/ConnectInfo;"
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return-object p0

    .line 161
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadEntity()Lcom/alipay/mobile/nebulacore/download/DownloadEntity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->h:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMethod()Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    return-object v0
.end method

.method public getRunner()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->f:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->b:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setDownloadEntity(Lcom/alipay/mobile/nebulacore/download/DownloadEntity;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->h:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    .line 119
    return-object p0
.end method

.method public setMethod(Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    .line 124
    return-object p0
.end method

.method public setRunner(Ljava/lang/Runnable;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->j:Ljava/lang/Runnable;

    .line 97
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->c:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setTimeout(I)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->f:I

    .line 110
    return-object p0
.end method

.method public setURL(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->d:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setUploadEntity(Lorg/apache/http/HttpEntity;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    .line 133
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->a:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[action] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[tag] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[url] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[method] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[timeout] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    instance-of v0, v0, Lorg/apache/http/entity/StringEntity;

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[entity] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[entity] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->g:Lorg/apache/http/HttpEntity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v1, "ConnectInfo"

    const-string/jumbo v3, "exception detail"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[header] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public valid()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->e:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->NONE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
