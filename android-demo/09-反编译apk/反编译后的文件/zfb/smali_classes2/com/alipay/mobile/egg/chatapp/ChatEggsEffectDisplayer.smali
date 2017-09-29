.class public Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;
.super Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;
.source "ChatEggsEffectDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomReferView:Landroid/view/View;

.field private mAnimationCreator:Lcom/alipay/mobile/egg/displayer/AnimationCreator;

.field private topReferView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->mAnimationCreator:Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    .line 23
    new-instance v0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;

    .line 24
    iget-object v1, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p2, p3, v1}, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;-><init>(IILjava/util/Random;)V

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->mAnimationCreator:Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    .line 26
    return-void
.end method


# virtual methods
.method public getAnimationCreator()Lcom/alipay/mobile/egg/displayer/AnimationCreator;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->mAnimationCreator:Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    return-object v0
.end method

.method protected bridge synthetic getEggEffectGroupByArgs(Ljava/lang/Object;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->getEggEffectGroupByArgs(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v0

    return-object v0
.end method

.method protected getEggEffectGroupByArgs(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getInstance()Lcom/alipay/mobile/egg/chatapp/EggMgr;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getEggEffectGroupByKeyword(Ljava/lang/String;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->mAnimationCreator:Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->topReferView:Landroid/view/View;

    .line 42
    iget-object v3, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->bottomReferView:Landroid/view/View;

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->setReferenceView(Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnableAlpha()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setMerryPunkimReferenceView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->topReferView:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/egg/chatapp/ChatEggsEffectDisplayer;->bottomReferView:Landroid/view/View;

    .line 32
    return-void
.end method
