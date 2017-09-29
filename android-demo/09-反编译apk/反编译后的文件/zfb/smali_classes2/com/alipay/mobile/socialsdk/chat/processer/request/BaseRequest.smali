.class public abstract Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field protected e:Z

.field protected f:I

.field protected g:J

.field protected h:J

.field protected i:I

.field protected j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

.field protected k:Z

.field protected final l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field protected final m:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->a:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->e:Z

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->f:I

    .line 37
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->g:J

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->m:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->h:J

    .line 57
    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 4

    .prologue
    .line 153
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->i:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->f:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request cancel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->a:Z

    .line 132
    return-void
.end method

.method public getChatMsgSender()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    return-object v0
.end method

.method public getMaxTryCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->f:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeOutMillions()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->g:J

    return-wide v0
.end method

.method public getTryCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->i:I

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->a:Z

    return v0
.end method

.method public isDirectSend()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->finish(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 126
    return-void
.end method

.method public retry()V
    .locals 4

    .prologue
    .line 141
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->i:I

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request Retry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->retry(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 144
    return-void
.end method

.method public sendMessage()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxTryCount(I)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->f:I

    .line 94
    return-object p0
.end method

.method public setMsgSender(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    .line 83
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->b:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->c:Ljava/lang/Object;

    .line 67
    return-object p0
.end method

.method public setTimeOutMillions(J)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    .locals 0

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->g:J

    .line 105
    return-object p0
.end method

.method public uploadResource()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
