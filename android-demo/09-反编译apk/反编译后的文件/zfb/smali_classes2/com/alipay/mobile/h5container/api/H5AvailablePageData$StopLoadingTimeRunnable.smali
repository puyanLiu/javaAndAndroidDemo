.class Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;
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
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;->this$0:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData$StopLoadingTimeRunnable;->this$0:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->stopLoading()V

    .line 46
    return-void
.end method
