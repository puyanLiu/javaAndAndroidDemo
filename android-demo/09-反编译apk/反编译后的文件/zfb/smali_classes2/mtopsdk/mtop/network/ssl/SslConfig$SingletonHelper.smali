.class Lmtopsdk/mtop/network/ssl/SslConfig$SingletonHelper;
.super Ljava/lang/Object;
.source "SslConfig.java"


# static fields
.field private static sslConfig:Lmtopsdk/mtop/network/ssl/SslConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lmtopsdk/mtop/network/ssl/SslConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmtopsdk/mtop/network/ssl/SslConfig;-><init>(Lmtopsdk/mtop/network/ssl/SslConfig$1;)V

    sput-object v0, Lmtopsdk/mtop/network/ssl/SslConfig$SingletonHelper;->sslConfig:Lmtopsdk/mtop/network/ssl/SslConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lmtopsdk/mtop/network/ssl/SslConfig;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lmtopsdk/mtop/network/ssl/SslConfig$SingletonHelper;->sslConfig:Lmtopsdk/mtop/network/ssl/SslConfig;

    return-object v0
.end method
