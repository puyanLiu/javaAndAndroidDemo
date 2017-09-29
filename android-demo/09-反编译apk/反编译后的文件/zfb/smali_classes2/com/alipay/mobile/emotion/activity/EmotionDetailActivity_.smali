.class public final Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;
.super Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;
.source "EmotionDetailActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->handler_:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->updateListViewByBriefVO(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_desciption:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mDesciptionTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 48
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_thumbnail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->thumbnailLayout:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 49
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->declare_service:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mDeclareServiceTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_copyright:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mCopyrightTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 51
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 52
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 53
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mPackageNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 54
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mNoAutoScrollView:Lcom/alipay/mobile/emotion/view/NoAutoScrollView;

    .line 55
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_use_fee:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mUseFeeTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 56
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emtion_detail_big_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mBigIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 57
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->emoiDownloadCancel:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 58
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_use_limit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mUseLimitTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 59
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_progress_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->emoiDownloadProgressInfo:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 60
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_submit_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 61
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_detail_forword_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->mForwordBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->init()V

    .line 63
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 39
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/alipay/android/phone/emotion/R$layout;->emotion_detail_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->setContentView(I)V

    .line 41
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->onBackPressed()V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->afterSetContentView_()V

    .line 69
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->afterSetContentView_()V

    .line 81
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->afterSetContentView_()V

    .line 75
    return-void
.end method

.method public final updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public final updateListViewByBriefVO(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
