.class public Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
.super Ljava/lang/Object;
.source "H5AvailablePageData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AvailablePageData"


# instance fields
.field private didFinishedLoadDate:J

.field private handler:Landroid/os/Handler;

.field private isWaitForStopLoading:Z

.field private isWaitForStopLoadingWithLoc:Z

.field private loadingReqsWithLoc:I

.field private pageStartTime:J

.field private stopLoadingTime:J

.field private stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

.field private stopLoadingTimeWithLoc:J

.field private stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

.field private waitForStopTime:J

.field private waitForStopTimeWithLoc:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->clear()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    .line 60
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    .line 66
    iput v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 67
    iput-boolean v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 68
    iput-boolean v2, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 69
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    .line 70
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    .line 71
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    .line 72
    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    .line 73
    return-void
.end method

.method public getPageStartTime()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->pageStartTime:J

    return-wide v0
.end method

.method public getStopLoadingTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    return-wide v0
.end method

.method public getStopLoadingTimeWithLoc()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    return-wide v0
.end method

.method public reportDidFinishedLoadDate(J)V
    .locals 0

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoading()V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoadingWithLoc()V

    .line 79
    return-void
.end method

.method public reportLocEnd()V
    .locals 4

    .prologue
    .line 104
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 105
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoadingWithLoc()V

    .line 108
    :cond_0
    return-void
.end method

.method public reportLocStart()V
    .locals 4

    .prologue
    .line 97
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    .line 98
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopWaitForStopLoadingWithLoc()V

    .line 101
    :cond_0
    return-void
.end method

.method public reportReqEnd()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopLoading()V

    .line 94
    :cond_0
    return-void
.end method

.method public reportReqStart()V
    .locals 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopWaitForStopLoading()V

    .line 86
    :cond_0
    return-void
.end method

.method public setPageStartTime(J)V
    .locals 0

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->pageStartTime:J

    .line 28
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTime:J

    .line 139
    return-void
.end method

.method public stopLoadingWithLoc()V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLoc:J

    .line 143
    return-void
.end method

.method public stopWaitForStopLoading()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public stopWaitForStopLoadingWithLoc()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public waitForStopLoading()V
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoading:Z

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTime:J

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    return-void
.end method

.method public waitForStopLoadingWithLoc()V
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->didFinishedLoadDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->loadingReqsWithLoc:I

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->isWaitForStopLoadingWithLoc:Z

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->waitForStopTimeWithLoc:J

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingTimeWithLocRunnable:Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_0
    return-void
.end method
