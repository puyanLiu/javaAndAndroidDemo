.class public final Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;
.super Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;
.source "EmotionStoreActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->handler_:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->refreshListView()V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->listview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 40
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->init()V

    .line 42
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->init_(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/alipay/android/phone/emotion/R$layout;->emotion_store_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->setContentView(I)V

    .line 33
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->onBackPressed()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final refreshListView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->afterSetContentView_()V

    .line 48
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->afterSetContentView_()V

    .line 60
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;->afterSetContentView_()V

    .line 54
    return-void
.end method
