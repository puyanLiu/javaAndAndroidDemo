.class Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;
.super Ljava/lang/Object;
.source "PhotoSelectActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBucketUpdate()V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoSelectActivity"

    const-string/jumbo v2, "\u540e\u53f0\u626b\u63cf\u5b8c\u6210,\u66f4\u65b0\u7167\u7247\u4e13\u8f91"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$9(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V

    .line 349
    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$10(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;Z)V

    .line 355
    return-void
.end method
