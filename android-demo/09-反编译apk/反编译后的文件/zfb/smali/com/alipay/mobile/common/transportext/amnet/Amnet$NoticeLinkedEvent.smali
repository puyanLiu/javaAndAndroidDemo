.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ipLcl:Ljava/lang/String;

.field private ipRmt:Ljava/lang/String;

.field private portLcl:Ljava/lang/String;

.field private portRmt:Ljava/lang/String;

.field private stamp:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1116
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1117
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipLcl:Ljava/lang/String;

    .line 1118
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipRmt:Ljava/lang/String;

    .line 1119
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portLcl:Ljava/lang/String;

    .line 1120
    iput-object p8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portRmt:Ljava/lang/String;

    .line 1121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->stamp:J

    .line 1122
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    .line 1128
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->identification()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 1130
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getPeer()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    .line 1131
    if-nez v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->stamp:J

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipLcl:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipRmt:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portLcl:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portRmt:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)V

    .line 1135
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->useProxy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipLcl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->ipRmt:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portLcl:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->portRmt:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    goto :goto_0

    .line 1149
    :cond_3
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
