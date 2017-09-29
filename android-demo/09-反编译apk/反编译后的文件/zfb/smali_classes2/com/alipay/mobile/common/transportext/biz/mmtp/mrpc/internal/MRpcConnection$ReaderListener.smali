.class Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "MRpcConnection.java"


# instance fields
.field private logReport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)V
    .locals 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    return-void
.end method

.method private fillReport(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 4

    .prologue
    .line 220
    iget-wide v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->readTiming:D

    double-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->readTiming:I

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    const-string/jumbo v1, "DNS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->dnsTiming:I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    const-string/jumbo v1, "JVM TCP connect"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 230
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->tcpTiming:I

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    const-string/jumbo v1, "JVM SSL handshake"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 234
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->sslTiming:I

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$100(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$200(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$100(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$200(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->targetHost:Ljava/lang/String;

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    :cond_4
    return-void
.end method


# virtual methods
.method public change(I)V
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "ReaderListener#change"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$002(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;I)I

    .line 184
    return-void
.end method

.method public onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "ReaderListener#onAcceptedDataEvent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;-><init>()V

    .line 210
    iget-object v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->data:[B

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    .line 211
    iget-object v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->headers:Ljava/util/Map;

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->headers:Ljava/util/Map;

    .line 212
    iget v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->compressSize:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->respSize:I

    .line 213
    const/16 v1, 0x7d0

    iput v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultCode:I

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->fillReport(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$300(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V

    .line 216
    return-void
.end method

.method public panic(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 188
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "ReaderListener#panic"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;-><init>()V

    .line 190
    iput p1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultCode:I

    .line 191
    iput-object p2, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultMsg:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$100(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$200(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string/jumbo v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$100(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$200(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->targetHost:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$300(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V

    .line 198
    return-void
.end method

.method public report(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 202
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "ReaderListener#report"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->logReport:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public restrict(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$402(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;J)J

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$502(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    return-void
.end method

.method public tell(BJII)V
    .locals 3

    .prologue
    .line 259
    const-string/jumbo v0, "MRpcConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tell reqId=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] uncompressSize=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  compressSize=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getStream(I)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    const-string/jumbo v0, "MRpcConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tell.  Not found reqId=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->setReqSize(I)V

    goto :goto_0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$102(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->access$202(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    return-void
.end method
