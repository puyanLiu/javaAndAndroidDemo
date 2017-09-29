.class public abstract Lcom/alipay/mobile/emotion/step/Step;
.super Ljava/lang/Object;
.source "Step.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Step"


# instance fields
.field private data:Ljava/lang/Object;

.field private mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

.field private final mStepName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/Step;->mStepName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/step/Step;->notifyStepError(Z)V

    .line 49
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getStepName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->mStepName:Ljava/lang/String;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v0, "Step"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/step/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "--->>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "Step"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/step/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "--->>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method protected notifyStepError(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/emotion/step/StepObserver;->onStepError(Lcom/alipay/mobile/emotion/step/Step;Z)V

    .line 75
    :cond_0
    return-void
.end method

.method protected notifyStepSuccess()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/Step;->mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/emotion/step/StepObserver;->onStepSuccess(Lcom/alipay/mobile/emotion/step/Step;)V

    .line 66
    :cond_0
    return-void
.end method

.method public abstract onPreStart()Z
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/Step;->data:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setStepObserver(Lcom/alipay/mobile/emotion/step/StepObserver;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/Step;->mObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    .line 32
    return-void
.end method

.method public abstract start()Z
.end method
