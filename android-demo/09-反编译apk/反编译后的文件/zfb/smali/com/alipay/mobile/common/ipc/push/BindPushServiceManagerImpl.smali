.class public Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;
.super Ljava/lang/Object;
.source "BindPushServiceManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;


# static fields
.field private static final PUSH_SERVICE:Ljava/lang/String; = "com.alipay.pushsdk.push.NotificationService"

.field private static final TAG:Ljava/lang/String; = "IPC_BindPushServiceManager"


# instance fields
.field private bindedService:Z

.field private context:Landroid/content/Context;

.field private ipcManagerDeathRecipient:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private pushServiceConnection:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

.field private taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->listeners:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getIpcManagerDeathRecipient()Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->notifyBindedEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->notifyUnBindEvent()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->context:Landroid/content/Context;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getIpcManagerDeathRecipient()Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->ipcManagerDeathRecipient:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;-><init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->ipcManagerDeathRecipient:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->ipcManagerDeathRecipient:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    return-object v0
.end method

.method private getPushServiceConnection()Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->pushServiceConnection:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;-><init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->pushServiceConnection:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->pushServiceConnection:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    return-object v0
.end method

.method private getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->taskScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    return-object v0
.end method

.method private notifyBindedEvent()V
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$2;-><init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    const-string/jumbo v2, "notifyBindedEvent"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private notifyUnBindEvent()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;-><init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    const-string/jumbo v2, "notifyUnBindEvent"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public addBindEventListener(Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public bindService()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 53
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "bindService"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.pushsdk.push.NotificationService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getPushServiceConnection()Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 58
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "push bind finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "IPC_BindPushServiceManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isBindedService()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->bindedService:Z

    return v0
.end method

.method public removeBindEventListener(Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public setBindedService(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->bindedService:Z

    .line 71
    return-void
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "unbindService"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->getPushServiceConnection()Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    return-void
.end method
