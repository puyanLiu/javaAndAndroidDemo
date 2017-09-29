.class public Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;
.super Ljava/lang/Object;
.source "NetworkDiagnoseServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getNetworkDiagnoseService()Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    .line 18
    return-void
.end method


# virtual methods
.method public addDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->addDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V

    .line 23
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->cancel()V

    .line 38
    return-void
.end method

.method public isCanDiagnose()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->isCanDiagnose()Z

    move-result v0

    goto :goto_0
.end method

.method public removeDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->removeDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V

    .line 28
    return-void
.end method

.method public startDiagnose()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->startDiagnose()V

    .line 33
    return-void
.end method
