.class Lcom/alipay/mobile/nebulacore/download/Worker;
.super Ljava/lang/Thread;
.source "Worker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field protected a:Lcom/alipay/mobile/nebulacore/download/Client;

.field public running:Z

.field public task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public disconnect()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/Client;->disconnect()Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    .line 33
    const-string/jumbo v0, "Worker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "worker enter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/Worker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/download/TaskBoxImpl;->getInstance()Lcom/alipay/mobile/nebulacore/download/TaskBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/download/TaskBox;->doTask()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string/jumbo v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "worker do "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v2, Lcom/alipay/mobile/nebulacore/download/ApacheClient;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/download/ApacheClient;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    .line 44
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulacore/download/Client;->setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V

    .line 46
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setClient(Lcom/alipay/mobile/nebulacore/download/Client;)V

    .line 47
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/nebulacore/download/Client;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 52
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getTotalSize()J

    move-result-wide v3

    .line 53
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->size(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_0

    move v0, v1

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setProgress(I)V

    .line 59
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    sget-object v3, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 62
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v0, v2, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    sget-object v2, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setClient(Lcom/alipay/mobile/nebulacore/download/Client;)V

    goto/16 :goto_0

    .line 67
    :cond_3
    const-string/jumbo v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "worker exit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/Worker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    .line 69
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 70
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/download/Worker;->a:Lcom/alipay/mobile/nebulacore/download/Client;

    .line 71
    return-void
.end method
