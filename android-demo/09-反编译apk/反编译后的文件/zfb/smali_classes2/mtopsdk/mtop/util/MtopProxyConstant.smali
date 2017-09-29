.class public Lmtopsdk/mtop/util/MtopProxyConstant;
.super Ljava/lang/Object;
.source "MtopProxyConstant.java"


# static fields
.field public static BASE_URL_ENV_ONLINE:Ljava/lang/String;

.field public static BASE_URL_ENV_PREPARE:Ljava/lang/String;

.field public static BASE_URL_ENV_TEST:Ljava/lang/String;

.field public static BASE_URL_ENV_TEST_SANDBOX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "api.m.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_ONLINE:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "api.wapa.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_PREPARE:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "api.waptest.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "api.waptest.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST_SANDBOX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
