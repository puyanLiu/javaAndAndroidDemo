.class Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;
.super Ljava/lang/Object;
.source "AcceptDataManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Channel;


# instance fields
.field private channel:B

.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;B)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-byte p2, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->channel:B

    .line 190
    return-void
.end method


# virtual methods
.method public obtain(Ljava/util/Map;[BDDII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BDDII)V"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;-><init>()V

    .line 196
    iget-byte v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->channel:B

    iput-byte v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    .line 197
    iput-object p2, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->data:[B

    .line 198
    iput-object p1, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->headers:Ljava/util/Map;

    .line 199
    add-double v1, p3, p5

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->readTiming:D

    .line 200
    iput p7, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->compressSize:I

    .line 201
    iput p8, v0, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->uncompressSize:I

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->notifyAcceptedData(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 203
    return-void
.end method

.method public recycle(Ljava/util/Map;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    iget-byte v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->channel:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->notifyRecycle(BLjava/util/Map;[B)V

    .line 213
    return-void
.end method

.method public tell(JII)V
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    iget-byte v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;->channel:B

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->notifyReqPacketSize(BJII)V

    .line 208
    return-void
.end method
