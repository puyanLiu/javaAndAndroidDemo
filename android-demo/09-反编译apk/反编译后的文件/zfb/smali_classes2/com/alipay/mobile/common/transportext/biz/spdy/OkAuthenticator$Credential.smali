.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;
.super Ljava/lang/Object;
.source "OkAuthenticator.java"


# instance fields
.field private final headerValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static basic(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;
    .locals 4

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 114
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->headerValue:Ljava/lang/String;

    return-object v0
.end method
