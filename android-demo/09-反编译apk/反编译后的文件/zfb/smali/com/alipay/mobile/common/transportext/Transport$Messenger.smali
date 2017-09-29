.class Lcom/alipay/mobile/common/transportext/Transport$Messenger;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Mercury;


# instance fields
.field private lsBack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private lsFore:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;)V
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsFore:Ljava/util/LinkedList;

    .line 527
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsBack:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/Transport$Messenger;-><init>(Lcom/alipay/mobile/common/transportext/Transport;)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsBack:Ljava/util/LinkedList;

    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsFore:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsBack:Ljava/util/LinkedList;

    .line 509
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsFore:Ljava/util/LinkedList;

    .line 510
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsBack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsBack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 514
    if-eqz v0, :cond_0

    .line 516
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    invoke-static {}, Lcom/alipay/mobile/common/transportext/Transport;->access$600()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    monitor-enter v1

    .line 519
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/Transport;->access$700(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Alarm;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/transportext/Transport$Alarm;->handle(Ljava/lang/Throwable;)V

    .line 520
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 510
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 524
    :cond_1
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 497
    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->lsFore:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 499
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Messenger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$500(Lcom/alipay/mobile/common/transportext/Transport;)V

    .line 502
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
