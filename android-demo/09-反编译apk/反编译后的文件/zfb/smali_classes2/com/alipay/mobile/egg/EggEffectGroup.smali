.class public Lcom/alipay/mobile/egg/EggEffectGroup;
.super Ljava/lang/Object;
.source "EggEffectGroup.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x1388


# instance fields
.field private count:I

.field private effectGap:I

.field private effects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private mEffectGroupDuration:J

.field private mEndTime:Ljava/util/Date;

.field private mStartTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->count:I

    .line 21
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEffectGroupDuration:J

    .line 23
    iput-object v2, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mStartTime:Ljava/util/Date;

    .line 25
    iput-object v2, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEndTime:Ljava/util/Date;

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effectGap:I

    .line 28
    iput p1, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->id:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effects:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addEggEffect(Lcom/alipay/mobile/egg/EggEffect;)V
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->count:I

    .line 37
    :cond_0
    return-void
.end method

.method public getEffectDuration()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEffectGroupDuration:J

    return-wide v0
.end method

.method public getEffectGap()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effectGap:I

    return v0
.end method

.method public getEffectsCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->count:I

    return v0
.end method

.method public getEggEffectByIndex(I)Lcom/alipay/mobile/egg/EggEffect;
    .locals 1

    .prologue
    .line 47
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->count:I

    if-lt p1, v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/EggEffect;

    goto :goto_0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->id:I

    return v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public setEffectDuration(J)V
    .locals 0

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEffectGroupDuration:J

    .line 62
    return-void
.end method

.method public setEffectGap(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->effectGap:I

    .line 75
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mEndTime:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/egg/EggEffectGroup;->mStartTime:Ljava/util/Date;

    .line 90
    return-void
.end method
