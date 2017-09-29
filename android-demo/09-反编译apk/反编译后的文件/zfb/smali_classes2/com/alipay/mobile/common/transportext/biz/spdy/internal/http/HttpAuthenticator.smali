.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field public static final SYSTEM_DEFAULT:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;->SYSTEM_DEFAULT:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static parseChallenges(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 129
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 134
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    const-string/jumbo v2, " "

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 145
    const/4 v1, 0x1

    const-string/jumbo v3, "realm=\""

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    add-int/lit8 v1, v2, 0x7

    .line 151
    const-string/jumbo v2, "\""

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 152
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 153
    add-int/lit8 v1, v2, 0x1

    .line 154
    const-string/jumbo v2, ","

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 157
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Challenge;

    invoke-direct {v2, v8, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 160
    :cond_1
    return-object v7
.end method

.method public static processAuthHeader(Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z
    .locals 5

    .prologue
    const/16 v4, 0x197

    const/4 v2, 0x0

    .line 92
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 93
    const-string/jumbo v1, "WWW-Authenticate"

    .line 94
    const-string/jumbo v0, "Authorization"

    .line 101
    :goto_0
    invoke-static {p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;->parseChallenges(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 113
    :goto_1
    return v0

    .line 95
    :cond_0
    if-ne p1, v4, :cond_1

    .line 96
    const-string/jumbo v1, "Proxy-Authenticate"

    .line 97
    const-string/jumbo v0, "Proxy-Authorization"

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v3

    if-ne v3, v4, :cond_3

    invoke-interface {p0, p4, p5, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;->authenticateProxy(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;

    move-result-object v1

    .line 108
    :goto_2
    if-nez v1, :cond_4

    move v0, v2

    .line 109
    goto :goto_1

    .line 105
    :cond_3
    invoke-interface {p0, p4, p5, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;->authenticate(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;

    move-result-object v1

    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator$Credential;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_1
.end method
