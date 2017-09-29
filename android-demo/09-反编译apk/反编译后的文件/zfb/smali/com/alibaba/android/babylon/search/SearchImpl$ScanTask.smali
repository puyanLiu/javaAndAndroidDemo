.class Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;
.super Ljava/lang/Object;
.source "SearchImpl.java"


# instance fields
.field public dbName:Ljava/lang/String;

.field public indexName:Ljava/lang/String;

.field public lastScanTime:J

.field public minScanTimeSpan:I

.field public retryTime:I

.field public tableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/android/babylon/search/SearchImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V
    .locals 1

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->retryTime:I

    .line 523
    const/16 v0, 0x7530

    iput v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->indexName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
