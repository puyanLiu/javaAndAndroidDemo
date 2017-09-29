.class final Lcom/alipay/mobile/rome/syncservice/d/c;
.super Ljava/lang/Object;
.source "SyncUplinkHandler.java"


# instance fields
.field public volatile a:I

.field public volatile b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput p1, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    .line 834
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 838
    if-ne p0, p1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 842
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobile/rome/syncservice/d/c;

    if-eqz v2, :cond_2

    .line 843
    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    check-cast p1, Lcom/alipay/mobile/rome/syncservice/d/c;

    iget v3, p1, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 845
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    add-int/lit16 v0, v0, 0x275

    .line 857
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[sequence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/d/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
