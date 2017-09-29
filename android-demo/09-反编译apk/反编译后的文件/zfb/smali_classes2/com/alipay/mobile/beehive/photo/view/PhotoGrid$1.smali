.class Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;
.super Ljava/lang/Object;
.source "PhotoGrid.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

.field private final synthetic val$photoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;->val$photoPath:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$1;->val$photoPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u89c6\u9891\u7f29\u7565\u56fe\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
