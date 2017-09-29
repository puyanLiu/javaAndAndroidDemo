.class public final Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;
.super Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;
.source "EmotionCustomListActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->handler_:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->btn_sync:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mSyncBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 46
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->layout_sync:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 47
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->icon_sync_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mSyncStatusIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 48
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tv_network_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mNetworkStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tv_sync_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mSyncStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tv_total_num:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mTotalNumTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 51
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->btn_del:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 52
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->layout_del:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mDelLayout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 53
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    .line 54
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 55
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->btn_stop:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mStopBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 56
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_gird:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->init()V

    .line 58
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->init_(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/alipay/android/phone/emotion/R$layout;->emotion_custom_list_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->onBackPressed()V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->afterSetContentView_()V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->setContentView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->afterSetContentView_()V

    .line 76
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->afterSetContentView_()V

    .line 70
    return-void
.end method

.method public final updateGridView()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
