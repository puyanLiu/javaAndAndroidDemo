.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/Pipeline;


# instance fields
.field mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

.field final synthetic this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    .line 47
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->next()V

    .line 67
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 51
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->start()V

    .line 63
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->stop()V

    .line 71
    return-void
.end method
