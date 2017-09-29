.class Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;
.super Ljava/lang/Object;
.source "LongLinkServiceManager.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongLinkDeviceBinded()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 493
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onLongLinkDeviceBinded: [ packetHanlder=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->onLongLinkDeviceBinded()V

    goto :goto_0
.end method

.method public onLongLinkRegistered()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onLongLinkRegistered: [ packetHanlder=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->onLongLinkRegistered()V

    goto :goto_0
.end method

.method public onLongLinkUserBinded()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onLongLinkUserBinded: [ packetHanlder=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->onLongLinkUserBinded()V

    goto :goto_0
.end method

.method public onReceivedPacket(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 438
    const-string/jumbo v0, "LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedPacket\uff1a [ packet="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onReceivedPacket: [ appId or appData =null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v2

    if-nez v2, :cond_2

    .line 452
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onReceivedPacket: [ packetHanlder=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string/jumbo v1, "LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->processPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onReceivedPacketSync(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onReceivedPacketSync: [ packetHanlder=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->processPacketSync(Ljava/lang/String;)V

    goto :goto_0
.end method
