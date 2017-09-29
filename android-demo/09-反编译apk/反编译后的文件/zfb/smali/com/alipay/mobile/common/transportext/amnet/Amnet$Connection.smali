.class interface abstract Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
.super Ljava/lang/Object;
.source "Amnet.java"


# virtual methods
.method public abstract changeCompressMethod(I)Z
.end method

.method public abstract closeHeartbeat()Z
.end method

.method public abstract closeIntelligentHb()Z
.end method

.method public abstract delayIntelligentHb()Z
.end method

.method public abstract downIntelligentHb()Z
.end method

.method public abstract getActStamp()J
.end method

.method public abstract getAddr()[Ljava/lang/String;
.end method

.method public abstract getDnsStamp()J
.end method

.method public abstract getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
.end method

.method public abstract getPeer()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
.end method

.method public abstract getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;
.end method

.method public abstract getSsl()I
.end method

.method public abstract getTouchingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;
.end method

.method public abstract licence()J
.end method

.method public abstract openHeartbeat(II)Z
.end method

.method public abstract openIntelligentHb()Z
.end method

.method public abstract postCmdRsp(I)Z
.end method

.method public abstract postDataReq(JJZBLjava/util/Map;[B)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)Z"
        }
    .end annotation
.end method

.method public abstract postGroundStatusReq(Z)Z
.end method

.method public abstract postHeartbeatReq()Z
.end method

.method public abstract postInitReq()Z
.end method

.method public abstract postUserStatusReq(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract protect()Z
.end method

.method public abstract putAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putDnsStamp(J)V
.end method

.method public abstract putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V
.end method

.method public abstract putPeer(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;)V
.end method

.method public abstract start(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract stop()V
.end method

.method public abstract treatIhInterval(J)V
.end method

.method public abstract treatIhSilence(J)V
.end method

.method public abstract upIntelligentHb()Z
.end method

.method public abstract useProxy(Ljava/lang/String;)Z
.end method
