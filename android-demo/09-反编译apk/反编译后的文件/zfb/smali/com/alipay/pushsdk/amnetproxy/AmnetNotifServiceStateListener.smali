.class public Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;
.super Ljava/lang/Object;
.source "AmnetNotifServiceStateListener.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/c/c;


# static fields
.field private static final TAG:Ljava/lang/String; = "amnet_AmnetNotifServiceStateListener"

.field private static amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;


# instance fields
.field private currentBindState:I

.field private currentState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    .line 23
    iput v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentBindState:I

    .line 43
    return-void
.end method

.method public static final getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 36
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->amnetNotifServiceStateListener:Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    goto :goto_0
.end method


# virtual methods
.method public isBindedMainProc()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentBindState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnCreate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 47
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    .line 48
    const-string/jumbo v0, "amnet_AmnetNotifServiceStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "currentState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 52
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifyMainProcExistStateChanged(I)V

    .line 54
    iput v3, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentBindState:I

    .line 56
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;->notifySeceenOnEvent()V

    .line 61
    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;->notifyAppResumeEvent()V

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    iget v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentState:I

    if-ne v0, v4, :cond_2

    .line 67
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 68
    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifyMainProcExistStateChanged(I)V

    .line 69
    iput v4, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->currentBindState:I

    goto :goto_0
.end method
