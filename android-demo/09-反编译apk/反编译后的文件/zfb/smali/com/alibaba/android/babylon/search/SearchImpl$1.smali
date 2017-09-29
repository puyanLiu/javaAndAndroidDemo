.class Lcom/alibaba/android/babylon/search/SearchImpl$1;
.super Ljava/lang/Object;
.source "SearchImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/babylon/search/SearchImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$1;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$1;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    new-instance v1, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;

    iget-object v2, p0, Lcom/alibaba/android/babylon/search/SearchImpl$1;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$0(Lcom/alibaba/android/babylon/search/SearchImpl;Landroid/os/Handler;)V

    .line 70
    const-string/jumbo v0, "SearchImpl"

    const-string/jumbo v1, "start scan thread"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 72
    return-void
.end method
