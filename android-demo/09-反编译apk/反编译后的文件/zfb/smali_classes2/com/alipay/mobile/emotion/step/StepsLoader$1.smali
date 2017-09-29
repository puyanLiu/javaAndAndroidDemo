.class Lcom/alipay/mobile/emotion/step/StepsLoader$1;
.super Ljava/lang/Object;
.source "StepsLoader.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/step/StepObserver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/step/StepsLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/step/StepsLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/StepsLoader$1;->this$0:Lcom/alipay/mobile/emotion/step/StepsLoader;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doNext(Lcom/alipay/mobile/emotion/step/Step;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader$1;->this$0:Lcom/alipay/mobile/emotion/step/StepsLoader;

    invoke-static {v0, p1}, Lcom/alipay/mobile/emotion/step/StepsLoader;->access$0(Lcom/alipay/mobile/emotion/step/StepsLoader;Lcom/alipay/mobile/emotion/step/Step;)Z

    move-result v0

    .line 94
    invoke-static {}, Lcom/alipay/mobile/emotion/step/StepsLoader;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doNext--->>stepName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/step/Step;->getStepName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isContinue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader$1;->this$0:Lcom/alipay/mobile/emotion/step/StepsLoader;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/step/StepsLoader;->access$2(Lcom/alipay/mobile/emotion/step/StepsLoader;)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public onStepError(Lcom/alipay/mobile/emotion/step/Step;Z)V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/mobile/emotion/step/StepsLoader;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStepError--->>StepName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/step/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isCancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/step/StepsLoader$1;->doNext(Lcom/alipay/mobile/emotion/step/Step;)V

    .line 110
    return-void
.end method

.method public onStepSuccess(Lcom/alipay/mobile/emotion/step/Step;)V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/alipay/mobile/emotion/step/StepsLoader;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStepSuccess--->>StepName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/step/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/step/StepsLoader$1;->doNext(Lcom/alipay/mobile/emotion/step/Step;)V

    .line 104
    return-void
.end method
