.class public Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;
.super Ljava/lang/Object;
.source "LibQuicNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native ConnectAndSendRequest([BII[BI)V
.end method

.method public native Init(Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;)V
.end method

.method public native OnNetworkStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
.end method
