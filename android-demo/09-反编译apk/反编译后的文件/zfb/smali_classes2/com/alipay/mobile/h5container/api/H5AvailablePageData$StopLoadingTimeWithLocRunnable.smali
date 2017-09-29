.class Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;
.super Ljava/lang/Object;
.source "H5AvailablePageData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;->this$0:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeWithLocRunnable;->this$0:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoadingWithLoc()V

    .line 53
    return-void
.end method
