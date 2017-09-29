.class public Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;
.super Ljava/lang/Object;
.source "ChatDataSyncCallback.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;


# static fields
.field private static synthetic g:[I


# instance fields
.field private a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field private b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

.field private c:Z

.field private final d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c:Z

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 33
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 36
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->onSyncState(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    if-eq v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sync\u72b6\u6001\u53d8\u66f4"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " \u6b63\u5728\u63a5\u6536"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECTEDIDLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    .line 58
    :goto_0
    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatsyncstate"

    const-string/jumbo v2, "state"

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    :cond_1
    return-void

    .line 52
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->NOT_AVAILABLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->values()[Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->RECEIVING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c:Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    return-object v0
.end method


# virtual methods
.method public getCurrentState()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    return-object v0
.end method

.method public initSyncStateAgain()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sync\u72b6\u6001\u4e3b\u52a8\u5237\u65b0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u6b63\u5728\u63a5\u6536"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;Z)V

    .line 43
    return-void
.end method

.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6536\u5230\u4f1a\u8bddsync\u547d\u4ee4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6536\u5230\u4f1a\u8bddsync\u6d88\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bizType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u662f\u5426\u6709\u66f4\u591a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-boolean v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c:Z

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->onSyncState(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->responseSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6536\u5230\u4f1a\u8bddsync\u6d88\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized onSyncState(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
