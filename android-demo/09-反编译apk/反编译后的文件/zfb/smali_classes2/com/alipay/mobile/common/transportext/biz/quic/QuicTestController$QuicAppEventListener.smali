.class Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;
.super Lcom/alipay/mobile/common/transportext/biz/appevent/EventInterfaceAdapter;
.source "QuicTestController.java"


# instance fields
.field private quicProxy:Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;

.field private screenOff:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V
    .locals 1

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/EventInterfaceAdapter;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->screenOff:Z

    return-void
.end method


# virtual methods
.method public onAppLeaveEvent()V
    .locals 0

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->screenOff()V

    .line 549
    return-void
.end method

.method public onNetWorkEvent(ZII)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->quicProxy:Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;

    if-nez v0, :cond_0

    .line 537
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "quicProxy is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void
.end method

.method public onSeceenOffEvent()V
    .locals 0

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->screenOff()V

    .line 532
    return-void
.end method

.method public screenOff()V
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->screenOff:Z

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->screenOff:Z

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$200(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V

    goto :goto_0
.end method

.method public setQuicProxy(Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->quicProxy:Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;

    .line 563
    return-void
.end method
