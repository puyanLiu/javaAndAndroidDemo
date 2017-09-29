.class public abstract Lcom/alipay/mobile/egg/displayer/AnimationCreator;
.super Ljava/lang/Object;
.source "AnimationCreator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$egg$view$AnimationType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$egg$view$AnimationType()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->$SWITCH_TABLE$com$alipay$mobile$egg$view$AnimationType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/egg/view/AnimationType;->values()[Lcom/alipay/mobile/egg/view/AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->BottomToTop:Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->LeftToRight:Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->None:Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->RightToLeft:Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->$SWITCH_TABLE$com$alipay$mobile$egg$view$AnimationType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createBottomToTopAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
.end method

.method protected abstract createLeftToRightAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
.end method

.method protected abstract createRightToLeftAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
.end method

.method protected abstract createTopToBottomAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
.end method

.method public getEggEffectAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p3, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/egg/EggEffect;->getAnimationType()Lcom/alipay/mobile/egg/view/AnimationType;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->$SWITCH_TABLE$com$alipay$mobile$egg$view$AnimationType()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/egg/view/AnimationType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 24
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->createBottomToTopAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->createTopToBottomAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->createLeftToRightAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;->createRightToLeftAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract setReferenceView(Landroid/view/View;Landroid/view/View;)V
.end method
