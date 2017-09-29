.class Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;
.super Ljava/lang/Object;
.source "MasterProxyDataListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

.field final synthetic this$0:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->this$0:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "start AyncDataEventTask#run"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "AyncDataEventTask onAcceptedDataEvent!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->this$0:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 115
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "AyncDataEventTask hard onAcceptedDataEvent!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->this$0:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;->acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    goto :goto_0
.end method
