.class public Lcom/alipay/pushsdk/amnetproxy/MasterProxyHttpDnsUpListener;
.super Ljava/lang/Object;
.source "MasterProxyHttpDnsUpListener.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/ipc/MainProcReloadDnsService;

    invoke-static {v0}, Lcom/alipay/pushsdk/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/ipc/MainProcReloadDnsService;

    .line 18
    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/ipc/MainProcReloadDnsService;->notifyReloadDns()V

    .line 19
    const-string/jumbo v0, "amnet_MasterProxyHttpDnsUpListener"

    const-string/jumbo v1, "notifyReloadDns finish!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
