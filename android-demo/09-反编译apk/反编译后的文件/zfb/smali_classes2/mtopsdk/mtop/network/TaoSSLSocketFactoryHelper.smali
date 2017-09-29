.class public Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper;
.super Ljava/lang/Object;
.source "TaoSSLSocketFactoryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TaoSSLSocketFactoryHelper"

.field private static trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDefaultSocketFactory(Ljava/io/InputStream;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 242
    .line 243
    :try_start_0
    new-instance v1, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;

    invoke-direct {v1, p0}, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper;->trustManager:Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    sget-object v1, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper;->trustManager:Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    sget-object v3, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper;->trustManager:Ljavax/net/ssl/TrustManager;

    aput-object v3, v1, v2

    .line 255
    :try_start_1
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 256
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 257
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 262
    :cond_0
    :goto_1
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    const-string/jumbo v2, "mtopsdk.TaoSSLSocketFactoryHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    :catch_1
    move-exception v1

    .line 259
    const-string/jumbo v2, "mtopsdk.TaoSSLSocketFactoryHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
