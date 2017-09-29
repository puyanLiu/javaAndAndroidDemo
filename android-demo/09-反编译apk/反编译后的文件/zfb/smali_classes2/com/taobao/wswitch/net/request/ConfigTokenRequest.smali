.class public Lcom/taobao/wswitch/net/request/ConfigTokenRequest;
.super Ljava/lang/Object;
.source "ConfigTokenRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized synConfigTokenRequest([Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 39
    const-class v1, Lcom/taobao/wswitch/net/request/ConfigTokenRequest;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/taobao/wswitch/model/ConfigTokenInputDO;

    invoke-direct {v0}, Lcom/taobao/wswitch/model/ConfigTokenInputDO;-><init>()V

    .line 40
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 41
    new-instance v2, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v2}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    .line 42
    sget-object v3, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 43
    new-instance v3, Lmtopsdk/mtop/MtopProxy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/MtopProxy;->setContext(Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/taobao/wswitch/net/request/TokenRequestListener;

    invoke-direct {v0, p0, p1}, Lcom/taobao/wswitch/net/request/TokenRequestListener;-><init>([Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v3, v0}, Lmtopsdk/mtop/MtopProxy;->setCallback(Lmtopsdk/mtop/common/MtopListener;)V

    .line 47
    invoke-virtual {v3}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall()Lmtopsdk/mtop/common/ApiID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
