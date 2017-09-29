.class public Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;
.super Ljava/lang/Object;
.source "AlipayOkHttpClientConfig.java"


# static fields
.field public static isNotUseNpn:Z

.field public static isTrustAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isTrustAll:Z

    .line 23
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDevConfig()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isTrustAll:Z

    .line 29
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    .line 31
    return-void
.end method
