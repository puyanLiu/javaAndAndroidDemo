.class public abstract Lcom/alipay/mobile/common/transportext/mnet/TcpClient;
.super Lcom/alipay/mobile/common/transportext/mnet/Client;
.source "TcpClient.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "mnet-tcp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Client;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract asyncErrorAddress(JILjava/lang/String;)V
.end method

.method protected abstract asyncErrorLink(JILjava/lang/String;)V
.end method

.method protected abstract asyncErrorReceive(JILjava/lang/String;)V
.end method

.method protected abstract asyncErrorSend(JILjava/lang/String;)V
.end method

.method protected abstract asyncNoticeActivity(J)V
.end method

.method protected abstract asyncNoticeAddr(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract asyncNoticeBroken(J)V
.end method

.method protected abstract asyncNoticeData(J[B)V
.end method

.method protected abstract asyncNoticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract asyncNoticeSent(JI)V
.end method

.method protected final errorAddress(JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncErrorAddress(JILjava/lang/String;)V

    .line 121
    return-void
.end method

.method protected final errorLink(JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncErrorLink(JILjava/lang/String;)V

    .line 127
    return-void
.end method

.method protected final errorReceive(JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncErrorReceive(JILjava/lang/String;)V

    .line 133
    return-void
.end method

.method protected final errorSend(JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncErrorSend(JILjava/lang/String;)V

    .line 139
    return-void
.end method

.method protected final noticeActivity(J)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeActivity(J)V

    .line 103
    return-void
.end method

.method protected final noticeAddr(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeAddr(JLjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected final noticeBroken(J)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeBroken(J)V

    .line 97
    return-void
.end method

.method protected final noticeData(J[B)V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeData(J[B)V

    .line 109
    return-void
.end method

.method protected final noticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p6}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected final noticeSent(JI)V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/TcpClient;->asyncNoticeSent(JI)V

    .line 115
    return-void
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native send([B)I
.end method
