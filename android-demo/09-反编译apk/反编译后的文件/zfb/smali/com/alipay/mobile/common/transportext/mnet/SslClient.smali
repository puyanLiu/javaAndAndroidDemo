.class public abstract Lcom/alipay/mobile/common/transportext/mnet/SslClient;
.super Lcom/alipay/mobile/common/transportext/mnet/TcpClient;
.source "SslClient.java"


# static fields
.field public static final CTX_MTLS:I = 0x1

.field public static final CTX_STD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "mnet-ssl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract asyncErrorHandshake(JLjava/lang/String;)V
.end method

.method protected abstract asyncErrorIo(JLjava/lang/String;)V
.end method

.method protected abstract asyncErrorShutdown(JLjava/lang/String;)V
.end method

.method protected abstract asyncNoticeHandshaked(JZ[B[B)V
.end method

.method protected abstract asyncNoticePosted(JI)V
.end method

.method protected abstract asyncNoticeShutdown(J)V
.end method

.method protected final errorHandshake(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncErrorHandshake(JLjava/lang/String;)V

    .line 98
    return-void
.end method

.method protected final errorIo(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncErrorIo(JLjava/lang/String;)V

    .line 104
    return-void
.end method

.method protected final errorShutdown(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncErrorShutdown(JLjava/lang/String;)V

    .line 110
    return-void
.end method

.method public native handshake(ILjava/lang/String;Ljava/lang/String;[B[B)I
.end method

.method protected final noticeHandshaked(JZ[B[B)V
    .locals 0

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncNoticeHandshaked(JZ[B[B)V

    .line 80
    return-void
.end method

.method protected final noticePosted(JI)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncNoticePosted(JI)V

    .line 92
    return-void
.end method

.method protected final noticeShutdown(J)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;->asyncNoticeShutdown(J)V

    .line 86
    return-void
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;)I
.end method
