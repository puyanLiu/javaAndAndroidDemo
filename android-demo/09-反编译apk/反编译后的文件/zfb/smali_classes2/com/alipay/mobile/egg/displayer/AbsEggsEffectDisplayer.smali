.class public abstract Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;
.super Ljava/lang/Object;
.source "AbsEggsEffectDisplayer.java"

# interfaces
.implements Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/egg/displayer/EggsEffectDisplayer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile animateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/view/AnimateDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cycleEggEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;"
        }
    .end annotation
.end field

.field private drawableCount:I

.field private isCleared:Z

.field private isInPlayingMode:Z

.field private mAnimationCount:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentArgs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

.field private mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

.field protected mRandom:Ljava/util/Random;

.field private mStartTime:J

.field private volatile onceEggEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;"
        }
    .end annotation
.end field

.field private volatile recycleDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mRandom:Ljava/util/Random;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentArgs:Ljava/lang/Object;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mStartTime:J

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isCleared:Z

    .line 54
    iput v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationCount:I

    .line 56
    iput-boolean v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode:Z

    .line 336
    new-instance v0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$1;-><init>(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)V

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->recycleDrawables:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->cycleEggEffects:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->onceEggEffects:Ljava/util/List;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode:Z

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->reset()V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->handleEggEffect(Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V

    return-void
.end method

.method private appendCycleEggs(Landroid/view/ViewGroup;I)V
    .locals 5

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->cycleEggEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 239
    if-gtz v3, :cond_1

    .line 245
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 242
    iget-object v4, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->cycleEggEffects:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/EggEffect;

    .line 243
    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->handleEggEffect(Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V

    .line 240
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private appendOnceEggs(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->onceEggEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 231
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->onceEggEffects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/EggEffect;

    .line 229
    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->handleEggEffect(Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getAnimationListener(Landroid/content/res/Resources;Ljava/util/ArrayList;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/egg/EggEffect;",
            ">;)",
            "Landroid/view/animation/Animation$AnimationListener;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer$2;-><init>(Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;Ljava/util/ArrayList;Landroid/content/res/Resources;)V

    .line 333
    return-object v0
.end method

.method private handleEggEffect(Landroid/content/res/Resources;Lcom/alipay/mobile/egg/EggEffect;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 248
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->isCycle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->recycleDrawables:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 253
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 258
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x7d0

    if-le v5, v6, :cond_6

    cmpg-float v5, v3, v2

    if-gez v5, :cond_6

    .line 261
    :goto_1
    if-nez v0, :cond_3

    .line 262
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->getEggType()Lcom/alipay/mobile/egg/EggType;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/egg/EggType;->Image:Lcom/alipay/mobile/egg/EggType;

    if-ne v3, v5, :cond_0

    .line 263
    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    :cond_0
    if-nez v0, :cond_2

    .line 311
    :cond_1
    :goto_2
    return-void

    .line 274
    :cond_2
    mul-float v3, v7, v2

    float-to-int v3, v3

    .line 275
    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 276
    invoke-virtual {v0, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->isCycle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->recycleDrawables:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 282
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->getAnimationCreator()Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->getAnimationCreator()Lcom/alipay/mobile/egg/displayer/AnimationCreator;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v2, v3, p2}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->getEggEffectAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 290
    :cond_4
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->getNextEggEffects()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->getNextEggEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 293
    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffect;->getNextEggEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->getAnimationListener(Landroid/content/res/Resources;Ljava/util/ArrayList;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 304
    :goto_3
    new-instance v2, Lcom/alipay/mobile/egg/view/AnimateDrawable;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/egg/view/AnimateDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v2}, Lcom/alipay/mobile/egg/view/AnimateDrawable;->startAnimationNow()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 295
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode:Z

    .line 189
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mAnimationCount:I

    .line 190
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->drawableCount:I

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->recycleDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->cycleEggEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->onceEggEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    return-void
.end method


# virtual methods
.method public clearPreviousEffectDisplayer(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isCleared:Z

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;->onCancelEffectDisplay(Lcom/alipay/mobile/egg/EggEffectGroup;)V

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->reset()V

    .line 185
    return-void

    .line 177
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/view/AnimateDrawable;

    .line 178
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/view/AnimateDrawable;->stopAnimationNow()V

    goto :goto_0
.end method

.method public drawEggs(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_3

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mStartTime:J

    sub-long/2addr v0, v2

    .line 89
    iget v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->drawableCount:I

    rem-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v2}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEffectDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEffectGap()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->appendCycleEggs(Landroid/view/ViewGroup;I)V

    .line 92
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->drawableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->drawableCount:I

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isContinue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/view/AnimateDrawable;

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/view/AnimateDrawable;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->animateList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/egg/view/AnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public fireEggs(Landroid/view/ViewGroup;Lcom/alipay/mobile/egg/EggEffectGroup;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/alipay/mobile/egg/EggEffectGroup;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentArgs:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/mobile/egg/EggEffectGroup;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 159
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->clearPreviousEffectDisplayer(Landroid/view/ViewGroup;)V

    .line 161
    :cond_4
    iput-object p2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isCleared:Z

    .line 164
    iput-object p3, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentArgs:Ljava/lang/Object;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mStartTime:J

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->prepareNextEffectDisplayer()V

    .line 168
    invoke-direct {p0, p1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->appendOnceEggs(Landroid/view/ViewGroup;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEffectGap()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->appendCycleEggs(Landroid/view/ViewGroup;I)V

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public fireEggs(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentArgs:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 110
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->getEggEffectGroupByArgs(Ljava/lang/Object;)Lcom/alipay/mobile/egg/EggEffectGroup;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getId()I

    move-result v0

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->getId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 123
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->clearPreviousEffectDisplayer(Landroid/view/ViewGroup;)V

    .line 125
    :cond_4
    iput-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isCleared:Z

    .line 128
    iput-object p2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentArgs:Ljava/lang/Object;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mStartTime:J

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->prepareNextEffectDisplayer()V

    .line 132
    invoke-direct {p0, p1}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->appendOnceEggs(Landroid/view/ViewGroup;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEffectGap()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->appendCycleEggs(Landroid/view/ViewGroup;I)V

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public getEffectDisplayerListener()Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    return-object v0
.end method

.method protected abstract getEggEffectGroupByArgs(Ljava/lang/Object;)Lcom/alipay/mobile/egg/EggEffectGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/alipay/mobile/egg/EggEffectGroup;"
        }
    .end annotation
.end method

.method protected isContinue()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isCleared:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isEnableAlpha()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public isInPlayingMode()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->isInPlayingMode:Z

    return v0
.end method

.method public prepareNextEffectDisplayer()V
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEffectsCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 219
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mCurrentEggsGroup:Lcom/alipay/mobile/egg/EggEffectGroup;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/egg/EggEffectGroup;->getEggEffectByIndex(I)Lcom/alipay/mobile/egg/EggEffect;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v1}, Lcom/alipay/mobile/egg/EggEffect;->isCycle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->cycleEggEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->onceEggEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setEffectDisplayerListener(Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/alipay/mobile/egg/displayer/AbsEggsEffectDisplayer;->mEffectDisplayerListener:Lcom/alipay/mobile/egg/displayer/EffectDisplayerListener;

    .line 368
    return-void
.end method
