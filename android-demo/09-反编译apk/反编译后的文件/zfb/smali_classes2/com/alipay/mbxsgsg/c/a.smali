.class public Lcom/alipay/mbxsgsg/c/a;
.super Ljava/lang/Object;
.source "MsgboxSyncReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mbxsgsg/c/c;

.field private static c:Lcom/alipay/mbxsgsg/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alipay/mbxsgsg/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mbxsgsg/c/a;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/alipay/mbxsgsg/c/c;

    invoke-direct {v0}, Lcom/alipay/mbxsgsg/c/c;-><init>()V

    sput-object v0, Lcom/alipay/mbxsgsg/c/a;->b:Lcom/alipay/mbxsgsg/c/c;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mbxsgsg/c/a;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alipay/mbxsgsg/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->c:Lcom/alipay/mbxsgsg/c/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mbxsgsg/c/a;

    invoke-direct {v0}, Lcom/alipay/mbxsgsg/c/a;-><init>()V

    sput-object v0, Lcom/alipay/mbxsgsg/c/a;->c:Lcom/alipay/mbxsgsg/c/a;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->c:Lcom/alipay/mbxsgsg/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cb\u6267\u884csyncProcessor.obtainLongLinkSyncService() "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->b:Lcom/alipay/mbxsgsg/c/c;

    .line 61
    invoke-static {}, Lcom/alipay/mbxsgsg/c/c;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/alipay/mbxsgsg/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "longLinkSyncService =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v1, "MSG-BOX"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveMessage,syncMessage  =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/mbxsgsg/c/a;->b:Lcom/alipay/mbxsgsg/c/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mbxsgsg/c/c;->a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 52
    :cond_0
    return-void
.end method
