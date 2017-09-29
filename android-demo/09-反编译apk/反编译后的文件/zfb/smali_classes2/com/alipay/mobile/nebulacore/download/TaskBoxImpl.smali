.class public Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;
.super Ljava/lang/Object;
.source "TaskBoxImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/download/TaskBox;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulacore/download/TaskBox",
        "<",
        "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskBoxImpl"

.field private static volatile a:Lcom/alipay/mobile/nebulacore/download/TaskBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulacore/download/TaskBox",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/download/TaskBox;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebulacore/download/TaskBox",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const-class v1, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->a:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->a:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->a:Lcom/alipay/mobile/nebulacore/download/TaskBox;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTask(Lcom/alipay/mobile/nebulacore/download/TaskInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->hasTask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 42
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic addTask(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->addTask(Lcom/alipay/mobile/nebulacore/download/TaskInfo;)Z

    move-result v0

    return v0
.end method

.method public clearTask()Z
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doTask()Lcom/alipay/mobile/nebulacore/download/TaskInfo;
    .locals 6

    .prologue
    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 103
    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_0
    if-lt v1, v3, :cond_0

    .line 111
    monitor-exit v2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 106
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v4, v5, :cond_1

    .line 107
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 108
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic doTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->doTask()Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_0

    move-object v0, v1

    .line 96
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    monitor-exit v2

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 91
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public bridge synthetic getTask(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->getTask(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasTask(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p1, :cond_0

    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    monitor-exit v2

    move v0, v1

    .line 60
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 54
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public removeTask(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_0

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 71
    const/4 v0, 0x0

    move v2, v0

    .line 72
    :goto_1
    if-lt v2, v4, :cond_1

    .line 69
    monitor-exit v3

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 73
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 74
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 76
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 72
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public bridge synthetic removeTask(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->removeTask(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public tasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->b:Ljava/util/LinkedList;

    return-object v0
.end method
