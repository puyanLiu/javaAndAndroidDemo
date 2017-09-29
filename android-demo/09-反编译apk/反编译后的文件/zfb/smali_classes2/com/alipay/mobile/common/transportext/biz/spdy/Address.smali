.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final proxy:Ljava/net/Proxy;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uriPort <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    if-nez p7, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->proxy:Ljava/net/Proxy;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 64
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    .line 65
    invoke-static {p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    if-eqz v0, :cond_e

    .line 124
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uriHost not equal. this.uriHost=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] that.uriHost=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    move v0, v1

    .line 178
    :goto_1
    return v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    iget v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    if-eq v0, v2, :cond_1

    .line 142
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uriPort not equal. this.uriPort=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] that.uriPort=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    move v0, v1

    .line 144
    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sslSocketFactory not equal. this.sslSocketFactory=["

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] that.sslSocketFactory=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v0, v1

    .line 151
    goto :goto_1

    .line 149
    :cond_2
    const-string/jumbo v0, " is null "

    goto :goto_3

    :cond_3
    const-string/jumbo v0, " is null "
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hostnameVerifier not equal. this.hostnameVerifier=["

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] that.hostnameVerifier=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move v0, v1

    .line 158
    goto/16 :goto_1

    .line 156
    :cond_5
    const-string/jumbo v0, "is null"

    goto :goto_6

    :cond_6
    const-string/jumbo v0, " is null "
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 163
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hostnameVerifier not equal. this.authenticator=["

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] that.authenticator=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move v0, v1

    .line 165
    goto/16 :goto_1

    .line 163
    :cond_8
    const-string/jumbo v0, " is null "

    goto :goto_9

    :cond_9
    const-string/jumbo v0, "is null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 170
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "transports not equal. this.transports=["

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    :goto_c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] that.transports=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    :goto_d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move v0, v1

    .line 172
    goto/16 :goto_1

    .line 170
    :cond_b
    const-string/jumbo v0, " is null "

    goto :goto_c

    :cond_c
    const-string/jumbo v0, "is null"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_d

    .line 175
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 177
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Address object changed.  other instanceof Address is false. other=("

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 178
    goto/16 :goto_1

    .line 177
    :cond_f
    const-string/jumbo v0, "is null."

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public final getAuthenticator()Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getTransports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    return-object v0
.end method

.method public final getUriHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getUriPort()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->transports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    return v0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_1

    :cond_3
    move v0, v1

    .line 187
    goto :goto_2
.end method
