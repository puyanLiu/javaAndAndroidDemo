.class public Lcom/alipay/mobile/emotion/step/StepsLoader;
.super Ljava/lang/Object;
.source "StepsLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private isStop:Z

.field private mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

.field private mName:Ljava/lang/String;

.field private final mStepObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

.field private mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/emotion/step/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/mobile/emotion/step/StepsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/step/StepsLoader;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "unknown"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/step/StepsLoader;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    iput-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->isStop:Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/emotion/step/StepsLoader$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/step/StepsLoader$1;-><init>(Lcom/alipay/mobile/emotion/step/StepsLoader;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/step/StepsLoader;Lcom/alipay/mobile/emotion/step/Step;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/step/StepsLoader;->isShouldContinue(Lcom/alipay/mobile/emotion/step/Step;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/emotion/step/StepsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/step/StepsLoader;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/step/StepsLoader;->triggerNextStep()V

    return-void
.end method

.method private isShouldContinue(Lcom/alipay/mobile/emotion/step/Step;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->isStop:Z

    if-eqz v1, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method private triggerNextStep()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->isStop:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/step/Step;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/step/Step;->onPreStart()Z

    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/step/Step;->start()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/alipay/mobile/emotion/step/StepsLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "triggerNextStep--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/emotion/step/StepObserver;->onStepError(Lcom/alipay/mobile/emotion/step/Step;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addStep(Lcom/alipay/mobile/emotion/step/Step;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepObserver:Lcom/alipay/mobile/emotion/step/StepObserver;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/emotion/step/Step;->setStepObserver(Lcom/alipay/mobile/emotion/step/StepObserver;)V

    .line 47
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/emotion/step/StepsLoader;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->isStop:Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start StepsLoader: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/step/StepsLoader;->log(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/step/StepsLoader;->triggerNextStep()V

    .line 34
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->isStop:Z

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mCurrentStep:Lcom/alipay/mobile/emotion/step/Step;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/step/Step;->cancel()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/StepsLoader;->mStepsQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 42
    return-void
.end method
