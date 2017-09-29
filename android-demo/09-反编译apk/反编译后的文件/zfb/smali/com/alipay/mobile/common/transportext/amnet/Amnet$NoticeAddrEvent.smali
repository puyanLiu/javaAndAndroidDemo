.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private stamp:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1092
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1093
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;->stamp:J

    .line 1094
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1100
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1101
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;->stamp:J

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putDnsStamp(J)V

    .line 1103
    :cond_0
    return-void
.end method
