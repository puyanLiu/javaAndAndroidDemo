.class public Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;
.super Ljava/lang/Object;
.source "EmotionStoreActivity_.java"


# instance fields
.field private context_:Landroid/content/Context;

.field private final intent_:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    .line 96
    return-void
.end method


# virtual methods
.method public flags(I)Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public startForResult(I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
