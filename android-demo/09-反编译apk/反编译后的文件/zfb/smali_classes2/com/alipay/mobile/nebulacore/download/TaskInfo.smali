.class public Lcom/alipay/mobile/nebulacore/download/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/download/TransferListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskImpl"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field private d:J

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lcom/alipay/mobile/nebulacore/download/Client;

.field private h:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

.field private i:Lcom/alipay/mobile/nebulacore/download/StatusListener;

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->b:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;-><init>()V

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    .line 56
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->j:J

    .line 57
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 58
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->d:J

    .line 59
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->k:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "options"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "TaskImpl"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->b:I

    .line 101
    return-void
.end method

.method protected final a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne v0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string/jumbo v0, "TaskImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->i:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->i:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/download/StatusListener;->onStatus(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    check-cast p1, Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 124
    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public getClient()Lcom/alipay/mobile/nebulacore/download/Client;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->g:Lcom/alipay/mobile/nebulacore/download/Client;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->f:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->b:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    return v0
.end method

.method public getStatus()Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->j:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->d:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 108
    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    if-ne v0, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iput p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->h:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->h:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/download/ProgressListener;->onProgress(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTotalSize(J)V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->setTotalSize(J)V

    .line 188
    return-void
.end method

.method public setClient(Lcom/alipay/mobile/nebulacore/download/Client;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->g:Lcom/alipay/mobile/nebulacore/download/Client;

    .line 163
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->f:Landroid/content/Context;

    .line 155
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->k:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    .line 93
    return-void
.end method

.method public setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->h:Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    .line 167
    return-void
.end method

.method public setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->i:Lcom/alipay/mobile/nebulacore/download/StatusListener;

    .line 171
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->j:J

    .line 196
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->d:J

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 138
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v1, "progress"

    iget v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "total"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getTotalSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v1, "options"

    iget v2, p0, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
