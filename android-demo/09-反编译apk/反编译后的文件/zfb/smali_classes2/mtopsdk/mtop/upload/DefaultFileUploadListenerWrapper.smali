.class public Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;
.super Ljava/lang/Object;
.source "DefaultFileUploadListenerWrapper.java"

# interfaces
.implements Lmtopsdk/mtop/upload/FileUploadBaseListener;


# instance fields
.field private isCancelled:Z

.field private listener:Lmtopsdk/mtop/upload/FileUploadListener;

.field private startTime:J

.field private totalTime:J


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/upload/FileUploadListener;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    .line 18
    iput-object p1, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    .line 19
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    .line 80
    return-void
.end method

.method public getUploadTotalTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->totalTime:J

    return-wide v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    return v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/upload/FileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->totalTime:J

    .line 51
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    instance-of v0, v0, Lmtopsdk/mtop/upload/FileUploadBaseListener;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    check-cast v0, Lmtopsdk/mtop/upload/FileUploadBaseListener;

    invoke-interface {v0, p1, p2, p3}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0, p2, p3}, Lmtopsdk/mtop/upload/FileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0, p1}, Lmtopsdk/mtop/upload/FileUploadListener;->onFinish(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->totalTime:J

    .line 41
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/upload/FileUploadListener;->onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0, p1}, Lmtopsdk/mtop/upload/FileUploadListener;->onProgress(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->startTime:J

    .line 24
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    invoke-interface {v0}, Lmtopsdk/mtop/upload/FileUploadListener;->onStart()V

    .line 28
    :cond_0
    return-void
.end method
