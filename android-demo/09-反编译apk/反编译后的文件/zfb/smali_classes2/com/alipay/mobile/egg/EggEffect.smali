.class public Lcom/alipay/mobile/egg/EggEffect;
.super Ljava/lang/Object;
.source "EggEffect.java"


# instance fields
.field private delayMillis:J

.field private duration:I

.field private isCycleEffect:Z

.field private isRandomDrawable:Z

.field public isScaleImageToScreenDensity:Z

.field private left:I

.field private mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

.field private mEggEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mEggType:Lcom/alipay/mobile/egg/EggType;

.field private resourcePath:Ljava/lang/String;

.field private top:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->resourcePath:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lcom/alipay/mobile/egg/EggEffect;->isCycleEffect:Z

    .line 22
    sget-object v0, Lcom/alipay/mobile/egg/EggType;->Image:Lcom/alipay/mobile/egg/EggType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggType:Lcom/alipay/mobile/egg/EggType;

    .line 24
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/egg/EggEffect;->delayMillis:J

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/egg/EggEffect;->duration:I

    .line 30
    iput-boolean v2, p0, Lcom/alipay/mobile/egg/EggEffect;->isRandomDrawable:Z

    .line 32
    iput-boolean v2, p0, Lcom/alipay/mobile/egg/EggEffect;->isScaleImageToScreenDensity:Z

    .line 34
    iput v2, p0, Lcom/alipay/mobile/egg/EggEffect;->left:I

    iput v2, p0, Lcom/alipay/mobile/egg/EggEffect;->top:I

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/egg/EggEffect;->resourcePath:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lcom/alipay/mobile/egg/EggEffect;->isCycleEffect:Z

    .line 46
    return-void
.end method


# virtual methods
.method public addNextEggEffect(Lcom/alipay/mobile/egg/EggEffect;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggEffects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggEffects:Ljava/util/ArrayList;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getAnimationType()Lcom/alipay/mobile/egg/view/AnimationType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    return-object v0
.end method

.method public getDelayMillis()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/alipay/mobile/egg/EggEffect;->delayMillis:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffect;->duration:I

    return v0
.end method

.method public getEggType()Lcom/alipay/mobile/egg/EggType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggType:Lcom/alipay/mobile/egg/EggType;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffect;->left:I

    return v0
.end method

.method public getNextEggEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffect;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffect;->top:I

    return v0
.end method

.method public isCycle()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/egg/EggEffect;->isCycleEffect:Z

    return v0
.end method

.method public isRandomDrawableEffect()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alipay/mobile/egg/EggEffect;->isRandomDrawable:Z

    return v0
.end method

.method public setAnimationType(Lcom/alipay/mobile/egg/view/AnimationType;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/egg/EggEffect;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 54
    return-void
.end method

.method public setDelayMillis(J)V
    .locals 0

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/alipay/mobile/egg/EggEffect;->delayMillis:J

    .line 92
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/alipay/mobile/egg/EggEffect;->duration:I

    .line 100
    return-void
.end method

.method public setEggType(Lcom/alipay/mobile/egg/EggType;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/egg/EggEffect;->mEggType:Lcom/alipay/mobile/egg/EggType;

    .line 62
    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/alipay/mobile/egg/EggEffect;->left:I

    .line 123
    return-void
.end method

.method public setRandomDrawableEffect(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/alipay/mobile/egg/EggEffect;->isRandomDrawable:Z

    .line 108
    return-void
.end method

.method public setTop(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/alipay/mobile/egg/EggEffect;->top:I

    .line 131
    return-void
.end method
