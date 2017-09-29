.class public final Lcom/alipay/mobile/rome/syncservice/d/d;
.super Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask$DefaultTaskHandler;
.source "SyncUplinkHandler.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncservice/d/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncservice/d/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    .line 119
    invoke-direct {p0, p2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask$DefaultTaskHandler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask$DefaultTaskHandler;->handleMessage(Landroid/os/Message;)V

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SEND_SYNC_UNPLINK"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;Ljava/util/List;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/rome/syncservice/d/c;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/d/c;

    .line 141
    iget v1, v0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    .line 142
    iget v1, v0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 143
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RETRY_SEND_SYNC_UPLINK: retry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, ",seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SYNC_UNPLINK_EXPIRED"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto/16 :goto_0

    .line 162
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scanDatabaseAndSendSyncUplinkMsg user does not login"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/d/a;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 170
    if-nez v0, :cond_2

    .line 171
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scanDatabaseAndSendSyncUplinkMsg: no item"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/d/a;Ljava/util/List;)V

    goto/16 :goto_0

    .line 181
    :pswitch_4
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RECV_SYNC_UNPLINK_ACK"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/a;ILjava/util/List;)V

    goto/16 :goto_0

    .line 190
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CANCEL_SYNC_UPLINK"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 193
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/d;->a:Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
