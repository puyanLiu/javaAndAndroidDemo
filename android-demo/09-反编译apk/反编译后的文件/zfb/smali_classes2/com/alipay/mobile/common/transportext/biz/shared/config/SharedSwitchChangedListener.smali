.class public Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;
.super Ljava/lang/Object;
.source "SharedSwitchChangedListener.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;)V

    const-string/jumbo v2, "SharedChangedThread"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    return-void
.end method
